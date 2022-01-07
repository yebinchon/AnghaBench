
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OMAP1_32K_TIMER_CR ;
 int OMAP1_32K_TIMER_TVR ;
 int omap_32k_timer_write (int,int ) ;

__attribute__((used)) static inline void omap_32k_timer_start(unsigned long load_val)
{
 if (!load_val)
  load_val = 1;
 omap_32k_timer_write(load_val, OMAP1_32K_TIMER_TVR);
 omap_32k_timer_write(0x0f, OMAP1_32K_TIMER_CR);
}
