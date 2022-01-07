
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int spi_imx_clkdiv_2(unsigned int fin,
  unsigned int fspi)
{
 int i, div = 4;

 for (i = 0; i < 7; i++) {
  if (fspi * div >= fin)
   return i;
  div <<= 1;
 }

 return 7;
}
