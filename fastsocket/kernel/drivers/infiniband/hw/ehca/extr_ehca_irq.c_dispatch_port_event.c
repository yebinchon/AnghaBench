
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port_num; } ;
struct ib_event {int event; TYPE_1__ element; int * device; } ;
struct ehca_shca {int ib_device; } ;
typedef enum ib_event_type { ____Placeholder_ib_event_type } ib_event_type ;


 int ehca_info (int *,char*,int,char const*) ;
 int ib_dispatch_event (struct ib_event*) ;

__attribute__((used)) static void dispatch_port_event(struct ehca_shca *shca, int port_num,
    enum ib_event_type type, const char *msg)
{
 struct ib_event event;

 ehca_info(&shca->ib_device, "port %d %s.", port_num, msg);
 event.device = &shca->ib_device;
 event.event = type;
 event.element.port_num = port_num;
 ib_dispatch_event(&event);
}
