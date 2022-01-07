
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint8_t ;
typedef int ksign_user_id_actor_t ;
typedef int ksign_signature_actor_t ;
typedef int ksign_public_key_actor_t ;


 int EBADMSG ;



 int ksign_parse_key (unsigned long const*,unsigned long const*,unsigned long*,int,int ,void*) ;
 int ksign_parse_signature (unsigned long const*,unsigned long const*,int ,void*) ;
 int ksign_parse_user_id (unsigned long const*,unsigned long const*,int ,void*) ;
 int printk (char*,...) ;

__attribute__((used)) static int ksign_parse_one_packet(const uint8_t **datap,
      const uint8_t *endp,
      ksign_signature_actor_t sigfnx,
      ksign_public_key_actor_t pkfnx,
      ksign_user_id_actor_t uidfnx,
      void *data)
{
 int rc, c, ctb, pkttype, lenbytes;
 unsigned long pktlen;
 uint8_t hdr[8];
 int hdrlen;


 rc = 0;
 if (*datap >= endp)
  goto leave;
 ctb = *(*datap)++;

 rc = -EBADMSG;

 hdrlen = 0;
 hdr[hdrlen++] = ctb;
 if (!(ctb & 0x80)) {
  printk("ksign: invalid packet (ctb=%02x)\n", ctb);
  goto leave;
 }

 pktlen = 0;
 if (ctb & 0x40) {
  pkttype = ctb & 0x3f;
  if (*datap >= endp) {
   printk("ksign: 1st length byte missing\n");
   goto leave;
  }
  c = *(*datap)++;
  hdr[hdrlen++] = c;

  if (c < 192) {
   pktlen = c;
  } else if (c < 224) {
   pktlen = (c - 192) * 256;
   if (*datap >= endp) {
    printk("ksign: 2nd length byte missing\n");
    goto leave;
   }
   c = *(*datap)++;
   hdr[hdrlen++] = c;
   pktlen += c + 192;
  } else if (c == 255) {
   if (*datap + 3 >= endp) {
    printk("ksign: 4 uint8_t length invalid\n");
    goto leave;
   }
   pktlen = (hdr[hdrlen++] = *(*datap)++ << 24);
   pktlen |= (hdr[hdrlen++] = *(*datap)++ << 16);
   pktlen |= (hdr[hdrlen++] = *(*datap)++ << 8);
   pktlen |= (hdr[hdrlen++] = *(*datap)++ << 0);
  } else {
   pktlen = 0;
  }
 } else {
  pkttype = (ctb >> 2) & 0xf;
  lenbytes = ((ctb & 3) == 3) ? 0 : (1 << (ctb & 3));
  if( !lenbytes ) {
   pktlen = 0;
  } else {
   if (*datap + lenbytes > endp) {
    printk("ksign: length bytes missing\n");
    goto leave;
   }
   for( ; lenbytes; lenbytes-- ) {
    pktlen <<= 8;
    pktlen |= hdr[hdrlen++] = *(*datap)++;
   }
  }
 }

 if (*datap + pktlen > endp) {
  printk("ksign: packet length longer than available data\n");
  goto leave;
 }


 switch (pkttype) {
 case 130:
  rc = ksign_parse_key(*datap, *datap + pktlen, hdr, hdrlen,
         pkfnx, data);
  break;
 case 129:
  rc = ksign_parse_signature(*datap, *datap + pktlen,
        sigfnx, data);
  break;
 case 128:
  rc = ksign_parse_user_id(*datap, *datap + pktlen,
      uidfnx, data);
  break;
 default:
  rc = 0;
  break;
 }

 *datap += pktlen;
leave:
 return rc;
}
