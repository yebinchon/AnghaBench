
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIMER_32K_SYNCHRONIZED ;
 unsigned long omap_readl (int ) ;

__attribute__((used)) static inline unsigned long omap_32k_sync_timer_read(void)
{
 return omap_readl(TIMER_32K_SYNCHRONIZED);
}
