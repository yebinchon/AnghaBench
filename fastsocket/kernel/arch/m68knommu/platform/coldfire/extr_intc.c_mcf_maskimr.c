
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 scalar_t__ MCFSIM_IMR ;
 scalar_t__ MCF_MBAR ;
 unsigned int __raw_readl (scalar_t__) ;
 int __raw_writel (unsigned int,scalar_t__) ;

void mcf_maskimr(unsigned int mask)
{
 u32 imr;
 imr = __raw_readl(MCF_MBAR + MCFSIM_IMR);
 imr |= mask;
 __raw_writel(imr, MCF_MBAR + MCFSIM_IMR);
}
