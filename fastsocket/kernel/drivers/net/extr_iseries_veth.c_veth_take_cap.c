
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xRc; } ;
struct veth_lpevent {TYPE_1__ base_event; } ;
struct veth_lpar_connection {int state; int lock; int cap_event; int remote_lp; int dst_inst; } ;
struct HvLpEvent {int dummy; } ;


 int HvCallEvent_ackLpEvent (struct HvLpEvent*) ;
 int HvCallEvent_getTargetLpInstanceId (int ,int ) ;
 int HvLpEvent_Rc_BufferNotAvailable ;
 int HvLpEvent_Type_VirtualLan ;
 int VETH_STATE_GOTCAPS ;
 int memcpy (int *,struct veth_lpevent*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int veth_error (char*,int ) ;
 int veth_kick_statemachine (struct veth_lpar_connection*) ;

__attribute__((used)) static void veth_take_cap(struct veth_lpar_connection *cnx,
     struct veth_lpevent *event)
{
 unsigned long flags;

 spin_lock_irqsave(&cnx->lock, flags);


 cnx->dst_inst =
  HvCallEvent_getTargetLpInstanceId(cnx->remote_lp,
        HvLpEvent_Type_VirtualLan);

 if (cnx->state & VETH_STATE_GOTCAPS) {
  veth_error("Received a second capabilities from LPAR %d.\n",
      cnx->remote_lp);
  event->base_event.xRc = HvLpEvent_Rc_BufferNotAvailable;
  HvCallEvent_ackLpEvent((struct HvLpEvent *) event);
 } else {
  memcpy(&cnx->cap_event, event, sizeof(cnx->cap_event));
  cnx->state |= VETH_STATE_GOTCAPS;
  veth_kick_statemachine(cnx);
 }
 spin_unlock_irqrestore(&cnx->lock, flags);
}
