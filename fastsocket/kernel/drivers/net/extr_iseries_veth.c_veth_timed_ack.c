
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct veth_lpar_connection {scalar_t__ num_pending_acks; int lock; TYPE_1__ ack_timer; scalar_t__ ack_timeout; } ;


 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int veth_flush_acks (struct veth_lpar_connection*) ;

__attribute__((used)) static void veth_timed_ack(unsigned long ptr)
{
 struct veth_lpar_connection *cnx = (struct veth_lpar_connection *) ptr;
 unsigned long flags;


 spin_lock_irqsave(&cnx->lock, flags);
 if (cnx->num_pending_acks > 0)
  veth_flush_acks(cnx);


 cnx->ack_timer.expires = jiffies + cnx->ack_timeout;
 add_timer(&cnx->ack_timer);
 spin_unlock_irqrestore(&cnx->lock, flags);
}
