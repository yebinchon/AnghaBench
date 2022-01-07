
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ ip_summed; } ;
struct net_device {int dummy; } ;
struct efx_tx_queue {int dummy; } ;
struct efx_nic {unsigned int n_tx_channels; } ;
typedef int netdev_tx_t ;
struct TYPE_2__ {int hardware; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 unsigned int EFX_TXQ_TYPE_HIGHPRI ;
 unsigned int EFX_TXQ_TYPE_OFFLOAD ;
 int EFX_WARN_ON_PARANOID (int) ;
 int efx_enqueue_skb (struct efx_tx_queue*,struct sk_buff*) ;
 struct efx_tx_queue* efx_get_tx_queue (struct efx_nic*,unsigned int,unsigned int) ;
 int efx_ptp_is_ptp_tx (struct efx_nic*,struct sk_buff*) ;
 int efx_ptp_tx (struct efx_nic*,struct sk_buff*) ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int netif_device_present (struct net_device*) ;
 unsigned int skb_get_queue_mapping (struct sk_buff*) ;
 TYPE_1__* skb_tx (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

netdev_tx_t efx_hard_start_xmit(struct sk_buff *skb,
    struct net_device *net_dev)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 struct efx_tx_queue *tx_queue;
 unsigned index, type;

 EFX_WARN_ON_PARANOID(!netif_device_present(net_dev));


 if (unlikely(skb_tx(skb)->hardware) &&
     unlikely(efx_ptp_is_ptp_tx(efx, skb))) {
  return efx_ptp_tx(efx, skb);
 }

 index = skb_get_queue_mapping(skb);
 type = skb->ip_summed == CHECKSUM_PARTIAL ? EFX_TXQ_TYPE_OFFLOAD : 0;
 if (index >= efx->n_tx_channels) {
  index -= efx->n_tx_channels;
  type |= EFX_TXQ_TYPE_HIGHPRI;
 }
 tx_queue = efx_get_tx_queue(efx, index, type);

 return efx_enqueue_skb(tx_queue, skb);
}
