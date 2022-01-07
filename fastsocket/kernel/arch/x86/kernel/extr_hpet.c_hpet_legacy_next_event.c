
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int hpet_next_event (unsigned long,struct clock_event_device*,int ) ;

__attribute__((used)) static int hpet_legacy_next_event(unsigned long delta,
   struct clock_event_device *evt)
{
 return hpet_next_event(delta, evt, 0);
}
