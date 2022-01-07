
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long S3C2443_CLKDIV0_HCLKDIV_MASK ;

__attribute__((used)) static inline unsigned long s3c2443_get_hdiv(unsigned long clkcon0)
{
 clkcon0 &= S3C2443_CLKDIV0_HCLKDIV_MASK;

 return clkcon0 + 1;
}
