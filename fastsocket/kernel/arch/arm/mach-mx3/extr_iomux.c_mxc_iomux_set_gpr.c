
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum iomux_gp_func { ____Placeholder_iomux_gp_func } iomux_gp_func ;


 int IOMUXGPR ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 int gpio_mux_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void mxc_iomux_set_gpr(enum iomux_gp_func gp, bool en)
{
 u32 l;

 spin_lock(&gpio_mux_lock);
 l = __raw_readl(IOMUXGPR);
 if (en)
  l |= gp;
 else
  l &= ~gp;

 __raw_writel(l, IOMUXGPR);
 spin_unlock(&gpio_mux_lock);
}
