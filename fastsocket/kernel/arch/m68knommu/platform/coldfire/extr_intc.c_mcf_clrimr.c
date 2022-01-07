
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ MCFSIM_IMR ;
 scalar_t__ MCF_MBAR ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;

void mcf_clrimr(int index)
{
 u32 imr;
 imr = __raw_readl(MCF_MBAR + MCFSIM_IMR);
 __raw_writel(imr & ~(0x1 << index), MCF_MBAR + MCFSIM_IMR);
}
