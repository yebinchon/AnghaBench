
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * function; } ;
struct nes_vnic {scalar_t__ delayed_event; scalar_t__ last_dispatched_event; TYPE_2__ event_timer; scalar_t__ logical_port; TYPE_3__* nesibdev; } ;
struct TYPE_4__ {scalar_t__ port_num; } ;
struct ib_event {scalar_t__ event; TYPE_1__ element; int * device; } ;
struct TYPE_6__ {int ibdev; } ;


 int ib_dispatch_event (struct ib_event*) ;

__attribute__((used)) static void nes_handle_delayed_event(unsigned long data)
{
 struct nes_vnic *nesvnic = (void *) data;

 if (nesvnic->delayed_event != nesvnic->last_dispatched_event) {
  struct ib_event event;

  event.device = &nesvnic->nesibdev->ibdev;
  if (!event.device)
   goto stop_timer;
  event.event = nesvnic->delayed_event;
  event.element.port_num = nesvnic->logical_port + 1;
  ib_dispatch_event(&event);
 }

stop_timer:
 nesvnic->event_timer.function = ((void*)0);
}
