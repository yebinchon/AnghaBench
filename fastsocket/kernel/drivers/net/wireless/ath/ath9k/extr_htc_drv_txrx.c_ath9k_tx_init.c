
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_failed; int data_vo_queue; int data_vi_queue; int data_bk_queue; int data_be_queue; int cab_ep_queue; int mgmt_ep_queue; } ;
struct ath9k_htc_priv {TYPE_1__ tx; } ;


 int skb_queue_head_init (int *) ;

int ath9k_tx_init(struct ath9k_htc_priv *priv)
{
 skb_queue_head_init(&priv->tx.mgmt_ep_queue);
 skb_queue_head_init(&priv->tx.cab_ep_queue);
 skb_queue_head_init(&priv->tx.data_be_queue);
 skb_queue_head_init(&priv->tx.data_bk_queue);
 skb_queue_head_init(&priv->tx.data_vi_queue);
 skb_queue_head_init(&priv->tx.data_vo_queue);
 skb_queue_head_init(&priv->tx.tx_failed);
 return 0;
}
