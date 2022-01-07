
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_lpar_connection {int state; int lock; int statemachine_wq; } ;


 int VETH_STATE_RESET ;
 int VETH_STATE_SHUTDOWN ;
 scalar_t__ cancel_delayed_work (int *) ;
 int flush_scheduled_work () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int veth_kick_statemachine (struct veth_lpar_connection*) ;

__attribute__((used)) static void veth_stop_connection(struct veth_lpar_connection *cnx)
{
 if (!cnx)
  return;

 spin_lock_irq(&cnx->lock);
 cnx->state |= VETH_STATE_RESET | VETH_STATE_SHUTDOWN;
 veth_kick_statemachine(cnx);
 spin_unlock_irq(&cnx->lock);




 if (cancel_delayed_work(&cnx->statemachine_wq)) {
  spin_lock_irq(&cnx->lock);
  veth_kick_statemachine(cnx);
  spin_unlock_irq(&cnx->lock);
 }


 flush_scheduled_work();
}
