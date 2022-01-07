
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_lpar_connection {scalar_t__ outstanding_tx; unsigned long last_contact; unsigned long reset_timeout; int lock; int reset_timer; int remote_lp; int state; } ;


 int HZ ;
 int VETH_STATE_RESET ;
 unsigned long jiffies ;
 int mod_timer (int *,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int veth_error (char*,scalar_t__,int ,int) ;
 int veth_kick_statemachine (struct veth_lpar_connection*) ;

__attribute__((used)) static void veth_timed_reset(unsigned long ptr)
{
 struct veth_lpar_connection *cnx = (struct veth_lpar_connection *)ptr;
 unsigned long trigger_time, flags;





 spin_lock_irqsave(&cnx->lock, flags);

 if (cnx->outstanding_tx > 0) {
  trigger_time = cnx->last_contact + cnx->reset_timeout;

  if (trigger_time < jiffies) {
   cnx->state |= VETH_STATE_RESET;
   veth_kick_statemachine(cnx);
   veth_error("%d packets not acked by LPAR %d within %d "
     "seconds, resetting.\n",
     cnx->outstanding_tx, cnx->remote_lp,
     cnx->reset_timeout / HZ);
  } else {

   trigger_time = jiffies + cnx->reset_timeout;
   mod_timer(&cnx->reset_timer, trigger_time);
  }
 }

 spin_unlock_irqrestore(&cnx->lock, flags);
}
