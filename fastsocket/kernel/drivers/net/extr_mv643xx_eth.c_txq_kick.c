
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tx_queue {int index; int tx_curr_desc; scalar_t__ tx_desc_dma; } ;
struct tx_desc {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct mv643xx_eth_private {int work_tx_end; int dev; } ;


 int TXQ_COMMAND ;
 int TXQ_CURRENT_DESC_PTR (int) ;
 int __netif_tx_lock (struct netdev_queue*,int ) ;
 int __netif_tx_unlock (struct netdev_queue*) ;
 struct netdev_queue* netdev_get_tx_queue (int ,int) ;
 int rdlp (struct mv643xx_eth_private*,int ) ;
 int smp_processor_id () ;
 int txq_enable (struct tx_queue*) ;
 struct mv643xx_eth_private* txq_to_mp (struct tx_queue*) ;

__attribute__((used)) static void txq_kick(struct tx_queue *txq)
{
 struct mv643xx_eth_private *mp = txq_to_mp(txq);
 struct netdev_queue *nq = netdev_get_tx_queue(mp->dev, txq->index);
 u32 hw_desc_ptr;
 u32 expected_ptr;

 __netif_tx_lock(nq, smp_processor_id());

 if (rdlp(mp, TXQ_COMMAND) & (1 << txq->index))
  goto out;

 hw_desc_ptr = rdlp(mp, TXQ_CURRENT_DESC_PTR(txq->index));
 expected_ptr = (u32)txq->tx_desc_dma +
    txq->tx_curr_desc * sizeof(struct tx_desc);

 if (hw_desc_ptr != expected_ptr)
  txq_enable(txq);

out:
 __netif_tx_unlock(nq);

 mp->work_tx_end &= ~(1 << txq->index);
}
