
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int s3c24xx_i2c_calcdivisor(unsigned long clkin, unsigned int wanted,
       unsigned int *div1, unsigned int *divs)
{
 unsigned int calc_divs = clkin / wanted;
 unsigned int calc_div1;

 if (calc_divs > (16*16))
  calc_div1 = 512;
 else
  calc_div1 = 16;

 calc_divs += calc_div1-1;
 calc_divs /= calc_div1;

 if (calc_divs == 0)
  calc_divs = 1;
 if (calc_divs > 17)
  calc_divs = 17;

 *divs = calc_divs;
 *div1 = calc_div1;

 return clkin / (calc_divs * calc_div1);
}
