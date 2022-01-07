
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vio_driver_state {struct ldc_channel* lp; TYPE_1__* vdev; } ;
struct ldc_channel_config {int rx_irq; int tx_irq; } ;
struct ldc_channel {int dummy; } ;
struct TYPE_2__ {int channel_id; int rx_irq; int tx_irq; } ;


 scalar_t__ IS_ERR (struct ldc_channel*) ;
 int PTR_ERR (struct ldc_channel*) ;
 struct ldc_channel* ldc_alloc (int ,struct ldc_channel_config*,void*) ;

int vio_ldc_alloc(struct vio_driver_state *vio,
    struct ldc_channel_config *base_cfg,
    void *event_arg)
{
 struct ldc_channel_config cfg = *base_cfg;
 struct ldc_channel *lp;

 cfg.tx_irq = vio->vdev->tx_irq;
 cfg.rx_irq = vio->vdev->rx_irq;

 lp = ldc_alloc(vio->vdev->channel_id, &cfg, event_arg);
 if (IS_ERR(lp))
  return PTR_ERR(lp);

 vio->lp = lp;

 return 0;
}
