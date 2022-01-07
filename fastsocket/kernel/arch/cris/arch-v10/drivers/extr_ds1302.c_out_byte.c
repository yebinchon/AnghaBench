
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TK_SCL_OUT (int) ;
 int TK_SDA_DIR (int) ;
 int TK_SDA_OUT (unsigned char) ;
 int tempudelay (int) ;

__attribute__((used)) static void
out_byte(unsigned char x)
{
 int i;
 TK_SDA_DIR(1);
 for (i = 8; i--;) {

  TK_SCL_OUT(0);
  TK_SDA_OUT(x & 1);
  tempudelay(1);
  TK_SCL_OUT(1);
  tempudelay(1);
  x >>= 1;
 }
 TK_SDA_DIR(0);
}
