
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ data; } ;
struct device {int dummy; } ;
struct net_device {int trans_start; struct device dev; } ;
struct TYPE_2__ {int tx_dropped; } ;
struct emac_priv {TYPE_1__ net_dev_stats; int ndev; int link; } ;
struct emac_netpktobj {int num_bufs; void* pkt_token; int pkt_length; struct emac_netbufobj* buf_list; } ;
struct emac_netbufobj {scalar_t__ data_ptr; void* buf_token; int length; } ;


 int EMAC_CACHE_WRITEBACK (unsigned long,int ) ;
 int EMAC_DEF_TX_CH ;
 int EMAC_ERR_TX_OUT_OF_BD ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int dev_err (struct device*,char*) ;
 int emac_send (struct emac_priv*,struct emac_netpktobj*,int ) ;
 int jiffies ;
 scalar_t__ net_ratelimit () ;
 struct emac_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_tx_err (struct emac_priv*) ;
 int netif_stop_queue (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int emac_dev_xmit(struct sk_buff *skb, struct net_device *ndev)
{
 struct device *emac_dev = &ndev->dev;
 int ret_code;
 struct emac_netbufobj tx_buf;
 struct emac_netpktobj tx_packet;
 struct emac_priv *priv = netdev_priv(ndev);


 if (unlikely(!priv->link)) {
  if (netif_msg_tx_err(priv) && net_ratelimit())
   dev_err(emac_dev, "DaVinci EMAC: No link to transmit");
  return NETDEV_TX_BUSY;
 }






 tx_packet.buf_list = &tx_buf;
 tx_packet.num_bufs = 1;
 tx_packet.pkt_length = skb->len;
 tx_packet.pkt_token = (void *)skb;
 tx_buf.length = skb->len;
 tx_buf.buf_token = (void *)skb;
 tx_buf.data_ptr = skb->data;
 EMAC_CACHE_WRITEBACK((unsigned long)skb->data, skb->len);
 ndev->trans_start = jiffies;
 ret_code = emac_send(priv, &tx_packet, EMAC_DEF_TX_CH);
 if (unlikely(ret_code != 0)) {
  if (ret_code == EMAC_ERR_TX_OUT_OF_BD) {
   if (netif_msg_tx_err(priv) && net_ratelimit())
    dev_err(emac_dev, "DaVinci EMAC: xmit() fatal" " err. Out of TX BD's");

   netif_stop_queue(priv->ndev);
  }
  priv->net_dev_stats.tx_dropped++;
  return NETDEV_TX_BUSY;
 }

 return NETDEV_TX_OK;
}
