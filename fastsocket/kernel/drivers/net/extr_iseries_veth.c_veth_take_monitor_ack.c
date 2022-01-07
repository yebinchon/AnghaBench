
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_lpevent {int dummy; } ;
struct veth_lpar_connection {int state; int lock; int remote_lp; } ;


 int VETH_STATE_RESET ;
 int VETH_STATE_SHUTDOWN ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int veth_debug (char*,int ) ;
 int veth_kick_statemachine (struct veth_lpar_connection*) ;

__attribute__((used)) static void veth_take_monitor_ack(struct veth_lpar_connection *cnx,
      struct veth_lpevent *event)
{
 unsigned long flags;

 spin_lock_irqsave(&cnx->lock, flags);
 veth_debug("cnx %d: lost connection.\n", cnx->remote_lp);




 if (! (cnx->state & VETH_STATE_SHUTDOWN)) {
  cnx->state |= VETH_STATE_RESET;
  veth_kick_statemachine(cnx);
 }
 spin_unlock_irqrestore(&cnx->lock, flags);
}
