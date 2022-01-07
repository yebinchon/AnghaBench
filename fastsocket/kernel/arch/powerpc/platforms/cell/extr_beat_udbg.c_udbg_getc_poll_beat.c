
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long beat_get_term_char (int ,int*,scalar_t__,scalar_t__) ;
 int celleb_vtermno ;
 scalar_t__ inbuf ;
 int inbuflen ;

__attribute__((used)) static int udbg_getc_poll_beat(void)
{



 char ch, *buf = (char *)inbuf;
 int i;
 long rc;
 if (inbuflen == 0) {

  inbuflen = 0;
  rc = beat_get_term_char(celleb_vtermno, &inbuflen,
     inbuf+0, inbuf+1);
  if (rc != 0)
   inbuflen = 0;
 }
 if (inbuflen <= 0 || inbuflen > 16) {

  inbuflen = 0;
  return -1;
 }
 ch = buf[0];
 for (i = 1; i < inbuflen; i++)
  buf[i-1] = buf[i];
 inbuflen--;
 return ch;
}
