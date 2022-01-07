
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct HvLpEvent {int dummy; } ;
struct TYPE_2__ {scalar_t__ hq_overflow_pending; scalar_t__ hq_current_event; } ;


 scalar_t__ hvlpevent_is_valid (struct HvLpEvent*) ;
 TYPE_1__ hvlpevent_queue ;
 scalar_t__ smp_processor_id () ;
 scalar_t__ spread_lpevents ;

int hvlpevent_is_pending(void)
{
 struct HvLpEvent *next_event;

 if (smp_processor_id() >= spread_lpevents)
  return 0;

 next_event = (struct HvLpEvent *)hvlpevent_queue.hq_current_event;

 return hvlpevent_is_valid(next_event) ||
  hvlpevent_queue.hq_overflow_pending;
}
