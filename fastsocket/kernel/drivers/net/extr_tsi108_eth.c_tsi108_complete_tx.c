
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tsi108_prv_data {int txhead; int txtail; scalar_t__ link_up; TYPE_1__* txring; int txfree; struct sk_buff** txskbs; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dev_addr; int name; } ;
struct TYPE_2__ {int misc; } ;


 int TSI108_TXRING_LEN ;
 int TSI108_TX_EOF ;
 int TSI108_TX_OK ;
 int TSI108_TX_OWN ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ is_valid_ether_addr (int ) ;
 struct tsi108_prv_data* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int printk (char*,int ,int) ;

__attribute__((used)) static void tsi108_complete_tx(struct net_device *dev)
{
 struct tsi108_prv_data *data = netdev_priv(dev);
 int tx;
 struct sk_buff *skb;
 int release = 0;

 while (!data->txfree || data->txhead != data->txtail) {
  tx = data->txtail;

  if (data->txring[tx].misc & TSI108_TX_OWN)
   break;

  skb = data->txskbs[tx];

  if (!(data->txring[tx].misc & TSI108_TX_OK))
   printk("%s: bad tx packet, misc %x\n",
          dev->name, data->txring[tx].misc);

  data->txtail = (data->txtail + 1) % TSI108_TXRING_LEN;
  data->txfree++;

  if (data->txring[tx].misc & TSI108_TX_EOF) {
   dev_kfree_skb_any(skb);
   release++;
  }
 }

 if (release) {
  if (is_valid_ether_addr(dev->dev_addr) && data->link_up)
   netif_wake_queue(dev);
 }
}
