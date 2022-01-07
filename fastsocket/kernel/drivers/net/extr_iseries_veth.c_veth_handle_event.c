
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_lpevent {int dummy; } ;
struct HvLpEvent {int dummy; } ;


 scalar_t__ hvlpevent_is_ack (struct HvLpEvent*) ;
 int veth_handle_ack (struct veth_lpevent*) ;
 int veth_handle_int (struct veth_lpevent*) ;

__attribute__((used)) static void veth_handle_event(struct HvLpEvent *event)
{
 struct veth_lpevent *veth_event = (struct veth_lpevent *)event;

 if (hvlpevent_is_ack(event))
  veth_handle_ack(veth_event);
 else
  veth_handle_int(veth_event);
}
