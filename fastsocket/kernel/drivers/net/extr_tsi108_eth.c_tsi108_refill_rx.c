
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tsi108_prv_data {int rxfree; int rxhead; TYPE_1__* rxring; struct sk_buff** rxskbs; } ;
struct sk_buff {int data; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int misc; int blen; int buf0; } ;


 int DMA_FROM_DEVICE ;
 int TSI108_EC_RXSTAT ;
 int TSI108_EC_RXSTAT_QUEUE0 ;
 scalar_t__ TSI108_RXBUF_SIZE ;
 int TSI108_RXRING_LEN ;
 int TSI108_RX_INT ;
 int TSI108_RX_OWN ;
 int TSI108_RX_SKB_SIZE ;
 int TSI_READ (int ) ;
 int dma_map_single (int *,int ,int ,int ) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,scalar_t__) ;
 struct tsi108_prv_data* netdev_priv (struct net_device*) ;
 int skb_reserve (struct sk_buff*,int) ;
 int tsi108_restart_rx (struct tsi108_prv_data*,struct net_device*) ;

__attribute__((used)) static int tsi108_refill_rx(struct net_device *dev, int budget)
{
 struct tsi108_prv_data *data = netdev_priv(dev);
 int done = 0;

 while (data->rxfree != TSI108_RXRING_LEN && done != budget) {
  int rx = data->rxhead;
  struct sk_buff *skb;

  data->rxskbs[rx] = skb = netdev_alloc_skb(dev,
         TSI108_RXBUF_SIZE + 2);
  if (!skb)
   break;

  skb_reserve(skb, 2);

  data->rxring[rx].buf0 = dma_map_single(((void*)0), skb->data,
       TSI108_RX_SKB_SIZE,
       DMA_FROM_DEVICE);






  data->rxring[rx].blen = TSI108_RX_SKB_SIZE;
  data->rxring[rx].misc = TSI108_RX_OWN | TSI108_RX_INT;

  data->rxhead = (data->rxhead + 1) % TSI108_RXRING_LEN;
  data->rxfree++;
  done++;
 }

 if (done != 0 && !(TSI_READ(TSI108_EC_RXSTAT) &
      TSI108_EC_RXSTAT_QUEUE0))
  tsi108_restart_rx(data, dev);

 return done;
}
