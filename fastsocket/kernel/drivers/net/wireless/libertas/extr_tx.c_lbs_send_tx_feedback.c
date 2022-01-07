
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tx_radiotap_hdr {scalar_t__ data_retries; } ;
struct lbs_private {scalar_t__ connect_status; scalar_t__ mesh_connect_status; scalar_t__ mesh_dev; scalar_t__ dev; TYPE_1__* currenttxskb; int rtap_net_dev; scalar_t__ txretrycount; int monitormode; } ;
struct TYPE_3__ {int protocol; scalar_t__ data; } ;


 scalar_t__ LBS_CONNECTED ;
 int eth_type_trans (TYPE_1__*,int ) ;
 int netif_rx (TYPE_1__*) ;
 int netif_wake_queue (scalar_t__) ;

void lbs_send_tx_feedback(struct lbs_private *priv, u32 try_count)
{
 struct tx_radiotap_hdr *radiotap_hdr;

 if (!priv->monitormode || priv->currenttxskb == ((void*)0))
  return;

 radiotap_hdr = (struct tx_radiotap_hdr *)priv->currenttxskb->data;

 radiotap_hdr->data_retries = try_count ?
  (1 + priv->txretrycount - try_count) : 0;

 priv->currenttxskb->protocol = eth_type_trans(priv->currenttxskb,
            priv->rtap_net_dev);
 netif_rx(priv->currenttxskb);

 priv->currenttxskb = ((void*)0);

 if (priv->connect_status == LBS_CONNECTED)
  netif_wake_queue(priv->dev);

 if (priv->mesh_dev && (priv->mesh_connect_status == LBS_CONNECTED))
  netif_wake_queue(priv->mesh_dev);
}
