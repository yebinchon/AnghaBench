
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned int IRQ_RTCAlrm ;
 int PWER ;
 int PWER_RTC ;

__attribute__((used)) static int sa1100_set_wake(unsigned int irq, unsigned int on)
{
 if (irq == IRQ_RTCAlrm) {
  if (on)
   PWER |= PWER_RTC;
  else
   PWER &= ~PWER_RTC;
  return 0;
 }
 return -EINVAL;
}
