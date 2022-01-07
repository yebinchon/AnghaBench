
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;


 int hpet_set_mode (int,struct clock_event_device*,int ) ;

__attribute__((used)) static void hpet_legacy_set_mode(enum clock_event_mode mode,
   struct clock_event_device *evt)
{
 hpet_set_mode(mode, evt, 0);
}
