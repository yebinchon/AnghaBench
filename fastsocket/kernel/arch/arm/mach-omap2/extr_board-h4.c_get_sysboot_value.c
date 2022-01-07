
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int OMAP24XX_CONTROL_STATUS ;
 int OMAP2_SYSBOOT_0_MASK ;
 int OMAP2_SYSBOOT_1_MASK ;
 int OMAP2_SYSBOOT_2_MASK ;
 int OMAP2_SYSBOOT_3_MASK ;
 int OMAP2_SYSBOOT_4_MASK ;
 int OMAP2_SYSBOOT_5_MASK ;
 int omap_ctrl_readl (int ) ;

__attribute__((used)) static u32 get_sysboot_value(void)
{
 return (omap_ctrl_readl(OMAP24XX_CONTROL_STATUS) &
  (OMAP2_SYSBOOT_5_MASK | OMAP2_SYSBOOT_4_MASK |
   OMAP2_SYSBOOT_3_MASK | OMAP2_SYSBOOT_2_MASK |
   OMAP2_SYSBOOT_1_MASK | OMAP2_SYSBOOT_0_MASK));
}
