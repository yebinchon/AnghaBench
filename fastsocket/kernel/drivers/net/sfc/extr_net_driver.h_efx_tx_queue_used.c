
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_tx_queue {int queue; TYPE_1__* efx; } ;
struct TYPE_2__ {int net_dev; } ;


 int EFX_TXQ_TYPE_HIGHPRI ;
 int netdev_get_num_tc (int ) ;

__attribute__((used)) static inline bool efx_tx_queue_used(struct efx_tx_queue *tx_queue)
{
 return !(netdev_get_num_tc(tx_queue->efx->net_dev) < 2 &&
   tx_queue->queue & EFX_TXQ_TYPE_HIGHPRI);
}
