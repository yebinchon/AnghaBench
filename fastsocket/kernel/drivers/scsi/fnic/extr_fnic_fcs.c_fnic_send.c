
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fnic {scalar_t__ state; int fnic_lock; int tx_queue; scalar_t__ in_remove; } ;
struct fc_lport {int dummy; } ;
struct fc_frame {int dummy; } ;


 scalar_t__ FNIC_IN_ETH_MODE ;
 scalar_t__ FNIC_IN_FC_MODE ;
 int dev_kfree_skb (int ) ;
 int fnic_send_frame (struct fnic*,struct fc_frame*) ;
 int fp_skb (struct fc_frame*) ;
 struct fnic* lport_priv (struct fc_lport*) ;
 int skb_queue_tail (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int fnic_send(struct fc_lport *lp, struct fc_frame *fp)
{
 struct fnic *fnic = lport_priv(lp);
 unsigned long flags;

 if (fnic->in_remove) {
  dev_kfree_skb(fp_skb(fp));
  return -1;
 }





 spin_lock_irqsave(&fnic->fnic_lock, flags);
 if (fnic->state != FNIC_IN_FC_MODE && fnic->state != FNIC_IN_ETH_MODE) {
  skb_queue_tail(&fnic->tx_queue, fp_skb(fp));
  spin_unlock_irqrestore(&fnic->fnic_lock, flags);
  return 0;
 }
 spin_unlock_irqrestore(&fnic->fnic_lock, flags);

 return fnic_send_frame(fnic, fp);
}
