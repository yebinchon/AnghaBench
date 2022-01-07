
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipath_devdata {TYPE_1__* verbs_dev; } ;
struct TYPE_4__ {int port_num; } ;
struct ib_event {int event; TYPE_2__ element; int * device; } ;
typedef enum ib_event_type { ____Placeholder_ib_event_type } ib_event_type ;
struct TYPE_3__ {int ibdev; } ;


 int ib_dispatch_event (struct ib_event*) ;

void signal_ib_event(struct ipath_devdata *dd, enum ib_event_type ev)
{
 struct ib_event event;

 event.device = &dd->verbs_dev->ibdev;
 event.element.port_num = 1;
 event.event = ev;
 ib_dispatch_event(&event);
}
