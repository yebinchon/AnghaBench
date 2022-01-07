
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_lpevent {int dummy; } ;
struct veth_lpar_connection {int state; int lock; int cap_ack_event; int remote_lp; } ;


 int VETH_STATE_GOTCAPACK ;
 int memcpy (int *,struct veth_lpevent*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int veth_error (char*,int ) ;
 int veth_kick_statemachine (struct veth_lpar_connection*) ;

__attribute__((used)) static void veth_take_cap_ack(struct veth_lpar_connection *cnx,
         struct veth_lpevent *event)
{
 unsigned long flags;

 spin_lock_irqsave(&cnx->lock, flags);
 if (cnx->state & VETH_STATE_GOTCAPACK) {
  veth_error("Received a second capabilities ack from LPAR %d.\n",
      cnx->remote_lp);
 } else {
  memcpy(&cnx->cap_ack_event, event,
         sizeof(cnx->cap_ack_event));
  cnx->state |= VETH_STATE_GOTCAPACK;
  veth_kick_statemachine(cnx);
 }
 spin_unlock_irqrestore(&cnx->lock, flags);
}
