
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clock_event_device {int dummy; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;




 int GT_READ (int ) ;
 int GT_TC_CONTROL_ENTC0_MSK ;
 int GT_TC_CONTROL_OFS ;
 int GT_TC_CONTROL_SELTC0_MSK ;
 int GT_WRITE (int ,int) ;
 int gt641xx_timer_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void gt641xx_timer0_set_mode(enum clock_event_mode mode,
        struct clock_event_device *evt)
{
 u32 ctrl;

 spin_lock(&gt641xx_timer_lock);

 ctrl = GT_READ(GT_TC_CONTROL_OFS);
 ctrl &= ~(GT_TC_CONTROL_ENTC0_MSK | GT_TC_CONTROL_SELTC0_MSK);

 switch (mode) {
 case 128:
  ctrl |= GT_TC_CONTROL_ENTC0_MSK | GT_TC_CONTROL_SELTC0_MSK;
  break;
 case 129:
  ctrl |= GT_TC_CONTROL_ENTC0_MSK;
  break;
 default:
  break;
 }

 GT_WRITE(GT_TC_CONTROL_OFS, ctrl);

 spin_unlock(&gt641xx_timer_lock);
}
