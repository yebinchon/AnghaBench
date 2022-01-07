
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct map_info {int dummy; } ;


 int EMIFS_CONFIG ;
 int OMAP_EMIFS_CONFIG_WP ;
 scalar_t__ cpu_class_is_omap1 () ;
 int omap_readl (int ) ;
 int omap_writel (int ,int ) ;

__attribute__((used)) static void omap_set_vpp(struct map_info *map, int enable)
{
 static int count;
 u32 l;

 if (cpu_class_is_omap1()) {
  if (enable) {
   if (count++ == 0) {
    l = omap_readl(EMIFS_CONFIG);
    l |= OMAP_EMIFS_CONFIG_WP;
    omap_writel(l, EMIFS_CONFIG);
   }
  } else {
   if (count && (--count == 0)) {
    l = omap_readl(EMIFS_CONFIG);
    l &= ~OMAP_EMIFS_CONFIG_WP;
    omap_writel(l, EMIFS_CONFIG);
   }
  }
 }
}
