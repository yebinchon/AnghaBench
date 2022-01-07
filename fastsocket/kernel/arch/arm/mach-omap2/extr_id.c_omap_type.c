
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int OMAP24XX_CONTROL_STATUS ;
 int OMAP2_DEVICETYPE_MASK ;
 int OMAP343X_CONTROL_STATUS ;
 scalar_t__ cpu_is_omap24xx () ;
 scalar_t__ cpu_is_omap34xx () ;
 int omap_ctrl_readl (int ) ;
 int pr_err (char*) ;

int omap_type(void)
{
 u32 val = 0;

 if (cpu_is_omap24xx())
  val = omap_ctrl_readl(OMAP24XX_CONTROL_STATUS);
 else if (cpu_is_omap34xx())
  val = omap_ctrl_readl(OMAP343X_CONTROL_STATUS);
 else {
  pr_err("Cannot detect omap type!\n");
  goto out;
 }

 val &= OMAP2_DEVICETYPE_MASK;
 val >>= 8;

out:
 return val;
}
