
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int r_dtr (unsigned short) ;
 int w_ctr (unsigned short,int) ;

__attribute__((used)) static int imm_byte_in(unsigned short base, char *buffer, int len)
{
 int i;




 w_ctr(base, 0x4);
 for (i = len; i; i--) {
  w_ctr(base, 0x26);
  *buffer++ = r_dtr(base);
  w_ctr(base, 0x25);
 }
 return 1;
}
