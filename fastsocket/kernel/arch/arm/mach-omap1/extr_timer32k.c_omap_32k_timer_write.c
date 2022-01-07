
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ OMAP1_32K_TIMER_BASE ;
 int omap_writew (int,scalar_t__) ;

__attribute__((used)) static inline void omap_32k_timer_write(int val, int reg)
{
 omap_writew(val, OMAP1_32K_TIMER_BASE + reg);
}
