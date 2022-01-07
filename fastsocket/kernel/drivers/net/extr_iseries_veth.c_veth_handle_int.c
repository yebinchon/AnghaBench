
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_6__ {size_t xSourceLp; int xSubtype; } ;
struct TYPE_4__ {scalar_t__* token; } ;
struct TYPE_5__ {TYPE_1__ frames_ack_data; } ;
struct veth_lpevent {TYPE_3__ base_event; TYPE_2__ u; } ;
struct veth_lpar_connection {int lock; int last_contact; int outstanding_tx; scalar_t__ msgs; } ;
typedef size_t HvLpIndex ;


 int BUG_ON (int) ;




 int VETH_MAX_ACKS_PER_MSG ;
 scalar_t__ VETH_NUMBUFFERS ;
 int jiffies ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct veth_lpar_connection** veth_cnx ;
 int veth_error (char*,int,size_t) ;
 int veth_receive (struct veth_lpar_connection*,struct veth_lpevent*) ;
 int veth_recycle_msg (struct veth_lpar_connection*,scalar_t__) ;
 int veth_take_cap (struct veth_lpar_connection*,struct veth_lpevent*) ;
 int veth_wake_queues (struct veth_lpar_connection*) ;

__attribute__((used)) static void veth_handle_int(struct veth_lpevent *event)
{
 HvLpIndex rlp = event->base_event.xSourceLp;
 struct veth_lpar_connection *cnx = veth_cnx[rlp];
 unsigned long flags;
 int i, acked = 0;

 BUG_ON(! cnx);

 switch (event->base_event.xSubtype) {
 case 131:
  veth_take_cap(cnx, event);
  break;
 case 128:


  break;
 case 129:
  spin_lock_irqsave(&cnx->lock, flags);

  for (i = 0; i < VETH_MAX_ACKS_PER_MSG; ++i) {
   u16 msgnum = event->u.frames_ack_data.token[i];

   if (msgnum < VETH_NUMBUFFERS) {
    veth_recycle_msg(cnx, cnx->msgs + msgnum);
    cnx->outstanding_tx--;
    acked++;
   }
  }

  if (acked > 0) {
   cnx->last_contact = jiffies;
   veth_wake_queues(cnx);
  }

  spin_unlock_irqrestore(&cnx->lock, flags);
  break;
 case 130:
  veth_receive(cnx, event);
  break;
 default:
  veth_error("Unknown interrupt type %d from LPAR %d.\n",
    event->base_event.xSubtype, rlp);
 };
}
