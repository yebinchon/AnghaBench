
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long S3C2443_CLKDIV0_ARMDIV_MASK ;
 unsigned long S3C2443_CLKDIV0_ARMDIV_SHIFT ;
 unsigned int* armdiv ;

__attribute__((used)) static inline unsigned int s3c2443_fclk_div(unsigned long clkcon0)
{
 clkcon0 &= S3C2443_CLKDIV0_ARMDIV_MASK;

 return armdiv[clkcon0 >> S3C2443_CLKDIV0_ARMDIV_SHIFT];
}
