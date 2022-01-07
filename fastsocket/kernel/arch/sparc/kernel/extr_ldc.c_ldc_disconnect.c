
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; int rx_irq; int tx_irq; } ;
struct ldc_channel {int flags; int lock; TYPE_1__ cfg; int id; int hs_state; int rx_num_entries; int rx_ra; int tx_num_entries; int tx_ra; } ;


 int EINVAL ;
 int ENODEV ;
 int LDC_FLAG_ALLOCED_QUEUES ;
 int LDC_FLAG_REGISTERED_IRQS ;
 int LDC_FLAG_REGISTERED_QUEUES ;
 int LDC_FLAG_RESET ;
 int LDC_HS_OPEN ;
 scalar_t__ LDC_MODE_RAW ;
 int LDC_STATE_BOUND ;
 int LDC_STATE_INIT ;
 int free_irq (int ,struct ldc_channel*) ;
 int ldc_set_state (struct ldc_channel*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long sun4v_ldc_rx_qconf (int ,int ,int ) ;
 unsigned long sun4v_ldc_tx_qconf (int ,int ,int ) ;

int ldc_disconnect(struct ldc_channel *lp)
{
 unsigned long hv_err, flags;
 int err;

 if (lp->cfg.mode == LDC_MODE_RAW)
  return -EINVAL;

 if (!(lp->flags & LDC_FLAG_ALLOCED_QUEUES) ||
     !(lp->flags & LDC_FLAG_REGISTERED_QUEUES))
  return -EINVAL;

 spin_lock_irqsave(&lp->lock, flags);

 err = -ENODEV;
 hv_err = sun4v_ldc_tx_qconf(lp->id, 0, 0);
 if (hv_err)
  goto out_err;

 hv_err = sun4v_ldc_tx_qconf(lp->id, lp->tx_ra, lp->tx_num_entries);
 if (hv_err)
  goto out_err;

 hv_err = sun4v_ldc_rx_qconf(lp->id, 0, 0);
 if (hv_err)
  goto out_err;

 hv_err = sun4v_ldc_rx_qconf(lp->id, lp->rx_ra, lp->rx_num_entries);
 if (hv_err)
  goto out_err;

 ldc_set_state(lp, LDC_STATE_BOUND);
 lp->hs_state = LDC_HS_OPEN;
 lp->flags |= LDC_FLAG_RESET;

 spin_unlock_irqrestore(&lp->lock, flags);

 return 0;

out_err:
 sun4v_ldc_tx_qconf(lp->id, 0, 0);
 sun4v_ldc_rx_qconf(lp->id, 0, 0);
 free_irq(lp->cfg.tx_irq, lp);
 free_irq(lp->cfg.rx_irq, lp);
 lp->flags &= ~(LDC_FLAG_REGISTERED_IRQS |
         LDC_FLAG_REGISTERED_QUEUES);
 ldc_set_state(lp, LDC_STATE_INIT);

 spin_unlock_irqrestore(&lp->lock, flags);

 return err;
}
