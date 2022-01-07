
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const PMAD_LANCE ;
 int const PMAX_LANCE ;
 int memcpy (void*,void const*,int) ;

__attribute__((used)) static void cp_from_buf(const int type, void *to, const void *from, int len)
{
 unsigned short *tp, *fp, clen;
 unsigned char *rtp, *rfp;

 if (type == PMAD_LANCE) {
  memcpy(to, from, len);
 } else if (type == PMAX_LANCE) {
  clen = len >> 1;
  tp = (unsigned short *) to;
  fp = (unsigned short *) from;
  while (clen--) {
   *tp++ = *fp++;
   fp++;
  }

  clen = len & 1;

  rtp = (unsigned char *) tp;
  rfp = (unsigned char *) fp;

  while (clen--) {
   *rtp++ = *rfp++;
  }
 } else {




  clen = len >> 4;
  tp = (unsigned short *) to;
  fp = (unsigned short *) from;
  while (clen--) {
   *tp++ = *fp++;
   *tp++ = *fp++;
   *tp++ = *fp++;
   *tp++ = *fp++;
   *tp++ = *fp++;
   *tp++ = *fp++;
   *tp++ = *fp++;
   *tp++ = *fp++;
   fp += 8;
  }




  clen = len & 15;
  rtp = (unsigned char *) tp;
  rfp = (unsigned char *) fp;
  while (clen--) {
   *rtp++ = *rfp++;
  }


 }

}
