
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int w_ctr (unsigned short,int) ;
 int w_dtr (unsigned short,int ) ;

__attribute__((used)) static int ppa_byte_out(unsigned short base, const char *buffer, int len)
{
 int i;

 for (i = len; i; i--) {
  w_dtr(base, *buffer++);
  w_ctr(base, 0xe);
  w_ctr(base, 0xc);
 }
 return 1;
}
