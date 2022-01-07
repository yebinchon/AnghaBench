
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GP_DEVICE ;
 int OMAP24XX_VA_READPERM0 ;
 int OMAP24XX_VA_REQINFOPERM0 ;
 int OMAP24XX_VA_WRITEPERM0 ;
 int OMAP2_DEVICETYPE_MASK ;
 int OMAP34XX_VA_ADDR_MATCH2 ;
 int OMAP34XX_VA_READPERM0 ;
 int OMAP34XX_VA_REQINFOPERM0 ;
 int OMAP34XX_VA_SMS_RG_ATT0 ;
 int OMAP34XX_VA_WRITEPERM0 ;
 int __raw_writel (int,int ) ;
 scalar_t__ cpu_is_omap242x () ;
 scalar_t__ cpu_is_omap34xx () ;
 scalar_t__ cpu_is_omap44xx () ;
 int omap_rev () ;

__attribute__((used)) static int is_sram_locked(void)
{
 int type = 0;

 if (cpu_is_omap44xx())

  return 0;

 if (cpu_is_omap242x())
  type = omap_rev() & OMAP2_DEVICETYPE_MASK;

 if (type == GP_DEVICE) {

  if (cpu_is_omap242x()) {
   __raw_writel(0xFF, OMAP24XX_VA_REQINFOPERM0);
   __raw_writel(0xCFDE, OMAP24XX_VA_READPERM0);
   __raw_writel(0xCFDE, OMAP24XX_VA_WRITEPERM0);
  }
  if (cpu_is_omap34xx()) {
   __raw_writel(0xFFFF, OMAP34XX_VA_REQINFOPERM0);
   __raw_writel(0xFFFF, OMAP34XX_VA_READPERM0);
   __raw_writel(0xFFFF, OMAP34XX_VA_WRITEPERM0);
   __raw_writel(0x0, OMAP34XX_VA_ADDR_MATCH2);
   __raw_writel(0xFFFFFFFF, OMAP34XX_VA_SMS_RG_ATT0);
  }
  return 0;
 } else
  return 1;
}
