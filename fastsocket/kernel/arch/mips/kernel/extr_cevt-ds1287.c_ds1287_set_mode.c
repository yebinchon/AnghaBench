
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clock_event_device {int dummy; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;



 int CMOS_READ (int ) ;
 int CMOS_WRITE (int ,int ) ;
 int RTC_PIE ;
 int RTC_REG_B ;
 int rtc_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ds1287_set_mode(enum clock_event_mode mode,
       struct clock_event_device *evt)
{
 u8 val;

 spin_lock(&rtc_lock);

 val = CMOS_READ(RTC_REG_B);

 switch (mode) {
 case 128:
  val |= RTC_PIE;
  break;
 default:
  val &= ~RTC_PIE;
  break;
 }

 CMOS_WRITE(val, RTC_REG_B);

 spin_unlock(&rtc_lock);
}
