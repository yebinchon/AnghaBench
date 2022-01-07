
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ksign_user_id_actor_t ;
typedef int ksign_signature_actor_t ;
typedef int ksign_public_key_actor_t ;


 int ksign_parse_one_packet (int const**,int const*,int ,int ,int ,void*) ;

int ksign_parse_packets(const uint8_t *buf,
   size_t size,
   ksign_signature_actor_t sigfnx,
   ksign_public_key_actor_t pkfnx,
   ksign_user_id_actor_t uidfnx,
   void *data)
{
 const uint8_t *datap, *endp;
 int rc;

 datap = buf;
 endp = buf + size;
 do {
  rc = ksign_parse_one_packet(&datap, endp,
         sigfnx, pkfnx, uidfnx, data);
 } while (rc == 0 && datap < endp);

 return rc;
}
