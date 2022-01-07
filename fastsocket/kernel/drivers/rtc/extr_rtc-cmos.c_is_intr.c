
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int RTC_IRQF ;
 int RTC_IRQMASK ;

__attribute__((used)) static inline int is_intr(u8 rtc_intr)
{
 if (!(rtc_intr & RTC_IRQF))
  return 0;
 return rtc_intr & RTC_IRQMASK;
}
