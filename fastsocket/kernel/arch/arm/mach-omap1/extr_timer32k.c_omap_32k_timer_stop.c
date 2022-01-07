
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OMAP1_32K_TIMER_CR ;
 int omap_32k_timer_write (int,int ) ;

__attribute__((used)) static inline void omap_32k_timer_stop(void)
{
 omap_32k_timer_write(0x0, OMAP1_32K_TIMER_CR);
}
