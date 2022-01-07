
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct HvLpEvent {int xSizeMinus1; } ;
struct TYPE_2__ {scalar_t__ hq_current_event; scalar_t__ hq_last_event; scalar_t__ hq_event_stack; } ;


 int IT_LP_EVENT_ALIGN ;
 scalar_t__ hvlpevent_is_valid (struct HvLpEvent*) ;
 TYPE_1__ hvlpevent_queue ;
 int rmb () ;

__attribute__((used)) static struct HvLpEvent * get_next_hvlpevent(void)
{
 struct HvLpEvent * event;
 event = (struct HvLpEvent *)hvlpevent_queue.hq_current_event;

 if (hvlpevent_is_valid(event)) {

  rmb();

  hvlpevent_queue.hq_current_event += ((event->xSizeMinus1 +
    IT_LP_EVENT_ALIGN) / IT_LP_EVENT_ALIGN) *
     IT_LP_EVENT_ALIGN;


  if (hvlpevent_queue.hq_current_event >
    hvlpevent_queue.hq_last_event) {
   hvlpevent_queue.hq_current_event =
    hvlpevent_queue.hq_event_stack;
  }
 } else {
  event = ((void*)0);
 }

 return event;
}
