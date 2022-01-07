
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HDSP2534_ADDR ;
 int __raw_writeb (unsigned int,scalar_t__) ;

__attribute__((used)) static void show_value(unsigned long x)
{
 int i;
 unsigned nibble;
 for (i = 0; i < 8; i++) {
  nibble = ((x >> (i * 4)) & 0xf);

  __raw_writeb(nibble + ((nibble > 9) ? 55 : 48),
     HDSP2534_ADDR + 0xe0 + ((7 - i) << 2));
 }
}
