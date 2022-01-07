
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct clock_event_device {int dummy; } ;


 unsigned long GT_READ (int ) ;
 int GT_TC0_OFS ;
 unsigned long GT_TC_CONTROL_ENTC0_MSK ;
 int GT_TC_CONTROL_OFS ;
 unsigned long GT_TC_CONTROL_SELTC0_MSK ;
 int GT_WRITE (int ,unsigned long) ;
 int gt641xx_timer_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int gt641xx_timer0_set_next_event(unsigned long delta,
      struct clock_event_device *evt)
{
 u32 ctrl;

 spin_lock(&gt641xx_timer_lock);

 ctrl = GT_READ(GT_TC_CONTROL_OFS);
 ctrl &= ~(GT_TC_CONTROL_ENTC0_MSK | GT_TC_CONTROL_SELTC0_MSK);
 ctrl |= GT_TC_CONTROL_ENTC0_MSK;

 GT_WRITE(GT_TC0_OFS, delta);
 GT_WRITE(GT_TC_CONTROL_OFS, ctrl);

 spin_unlock(&gt641xx_timer_lock);

 return 0;
}
