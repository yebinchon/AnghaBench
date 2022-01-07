
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long H_SUCCESS ;
 scalar_t__ inbuf ;
 int inbuflen ;
 long plpar_get_term_char (int ,int*,char*) ;
 int vtermno ;

__attribute__((used)) static int udbg_getc_pollLP(void)
{



 char ch, *buf = (char *)inbuf;
 int i;
 long rc;
 if (inbuflen == 0) {

  inbuflen = 0;
  rc = plpar_get_term_char(vtermno, &inbuflen, buf);
  if (rc != H_SUCCESS)
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
