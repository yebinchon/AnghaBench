
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {scalar_t__ protocol; scalar_t__ len; } ;
struct net_device {int dummy; } ;
struct lcs_header {scalar_t__ offset; int slot; int type; } ;
struct TYPE_3__ {int tx_packets; int tx_bytes; int tx_dropped; int tx_carrier_errors; int tx_errors; } ;
struct lcs_card {scalar_t__ state; scalar_t__ tx_emitted; int lock; TYPE_2__* tx_buffer; int dev; TYPE_1__ stats; int portno; int lan_type; int write; } ;
struct TYPE_4__ {scalar_t__ count; scalar_t__ data; int callback; } ;


 scalar_t__ DEV_STATE_UP ;
 int ETH_P_IPV6 ;
 int LCS_DBF_TEXT (int,int ,char*) ;
 scalar_t__ LCS_IOBUFFERSIZE ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int __lcs_emit_txbuffer (struct lcs_card*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 TYPE_2__* lcs_get_buffer (int *) ;
 int lcs_txbuffer_cb ;
 int netif_stop_queue (int ) ;
 int netif_wake_queue (int ) ;
 int skb_copy_from_linear_data (struct sk_buff*,struct lcs_header*,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace ;

__attribute__((used)) static int
__lcs_start_xmit(struct lcs_card *card, struct sk_buff *skb,
   struct net_device *dev)
{
 struct lcs_header *header;
 int rc = NETDEV_TX_OK;

 LCS_DBF_TEXT(5, trace, "hardxmit");
 if (skb == ((void*)0)) {
  card->stats.tx_dropped++;
  card->stats.tx_errors++;
  return NETDEV_TX_OK;
 }
 if (card->state != DEV_STATE_UP) {
  dev_kfree_skb(skb);
  card->stats.tx_dropped++;
  card->stats.tx_errors++;
  card->stats.tx_carrier_errors++;
  return NETDEV_TX_OK;
 }
 if (skb->protocol == htons(ETH_P_IPV6)) {
  dev_kfree_skb(skb);
  return NETDEV_TX_OK;
 }
 netif_stop_queue(card->dev);
 spin_lock(&card->lock);
 if (card->tx_buffer != ((void*)0) &&
     card->tx_buffer->count + sizeof(struct lcs_header) +
     skb->len + sizeof(u16) > LCS_IOBUFFERSIZE)

  __lcs_emit_txbuffer(card);
 if (card->tx_buffer == ((void*)0)) {

  card->tx_buffer = lcs_get_buffer(&card->write);
  if (card->tx_buffer == ((void*)0)) {
   card->stats.tx_dropped++;
   rc = NETDEV_TX_BUSY;
   goto out;
  }
  card->tx_buffer->callback = lcs_txbuffer_cb;
  card->tx_buffer->count = 0;
 }
 header = (struct lcs_header *)
  (card->tx_buffer->data + card->tx_buffer->count);
 card->tx_buffer->count += skb->len + sizeof(struct lcs_header);
 header->offset = card->tx_buffer->count;
 header->type = card->lan_type;
 header->slot = card->portno;
 skb_copy_from_linear_data(skb, header + 1, skb->len);
 spin_unlock(&card->lock);
 card->stats.tx_bytes += skb->len;
 card->stats.tx_packets++;
 dev_kfree_skb(skb);
 netif_wake_queue(card->dev);
 spin_lock(&card->lock);
 if (card->tx_emitted <= 0 && card->tx_buffer != ((void*)0))

  __lcs_emit_txbuffer(card);
out:
 spin_unlock(&card->lock);
 return rc;
}
