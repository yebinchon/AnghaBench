
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TK_SCL_OUT (int) ;
 int TK_SDA_DIR (int ) ;
 int TK_SDA_IN () ;
 int tempudelay (int) ;

__attribute__((used)) static unsigned char
in_byte(void)
{
 unsigned char x = 0;
 int i;




 TK_SDA_DIR(0);

 for (i = 8; i--;) {
  TK_SCL_OUT(0);
  tempudelay(1);
  x >>= 1;
  x |= (TK_SDA_IN() << 7);
  TK_SCL_OUT(1);
  tempudelay(1);
 }

 return x;
}
