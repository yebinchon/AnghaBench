
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct sk_buff {unsigned int len; TYPE_10__* dev; int protocol; void* pkt_type; int mac_header; scalar_t__ data; } ;
struct TYPE_16__ {int id; } ;
struct TYPE_17__ {TYPE_4__ l3; } ;
struct qeth_hdr {TYPE_5__ hdr; } ;
struct TYPE_21__ {unsigned int rx_bytes; int rx_packets; } ;
struct TYPE_20__ {int sniffer; } ;
struct TYPE_18__ {int type; } ;
struct TYPE_15__ {size_t b_index; int e_offset; int b_element; } ;
struct TYPE_14__ {TYPE_1__* in_q; } ;
struct qeth_card {TYPE_9__ stats; int napi; int vlangrp; TYPE_8__ options; TYPE_10__* dev; TYPE_6__ info; TYPE_3__ rx; TYPE_2__ qdio; } ;
typedef int __u16 ;
struct TYPE_19__ {int (* create ) (struct sk_buff*,TYPE_10__*,int ,int ,char*,int ) ;} ;
struct TYPE_13__ {int * bufs; } ;
struct TYPE_12__ {int addr_len; int dev_addr; TYPE_7__* header_ops; } ;


 int BUG_ON (int) ;
 int CTRL ;
 int ETH_P_AF_IUCV ;
 int NET_SKB_PAD ;
 void* PACKET_HOST ;
 int QETH_CARD_TYPE_IQD ;
 int QETH_DBF_CTRL_LEN ;
 int QETH_DBF_HEX (int ,int,struct qeth_hdr*,int ) ;
 int QETH_DBF_TEXT (int ,int,char*) ;


 int TRACE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,TYPE_10__*) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 int netif_receive_skb (struct sk_buff*) ;
 struct sk_buff* qeth_core_get_next_skb (struct qeth_card*,int *,int *,int *,struct qeth_hdr**) ;
 int qeth_l3_rebuild_skb (struct qeth_card*,struct sk_buff*,struct qeth_hdr*,int *) ;
 int stub1 (struct sk_buff*,TYPE_10__*,int ,int ,char*,int ) ;
 int vlan_gro_receive (int *,int ,int ,struct sk_buff*) ;

__attribute__((used)) static int qeth_l3_process_inbound_buffer(struct qeth_card *card,
    int budget, int *done)
{
 int work_done = 0;
 struct sk_buff *skb;
 struct qeth_hdr *hdr;
 __u16 vlan_tag = 0;
 int is_vlan;
 unsigned int len;
 __u16 magic;

 *done = 0;
 BUG_ON(!budget);
 while (budget) {
  skb = qeth_core_get_next_skb(card,
   &card->qdio.in_q->bufs[card->rx.b_index],
   &card->rx.b_element, &card->rx.e_offset, &hdr);
  if (!skb) {
   *done = 1;
   break;
  }
  skb->dev = card->dev;
  switch (hdr->hdr.l3.id) {
  case 128:
   magic = *(__u16 *)skb->data;
   if ((card->info.type == QETH_CARD_TYPE_IQD) &&
       (magic == ETH_P_AF_IUCV)) {
    skb->protocol = ETH_P_AF_IUCV;
    skb->pkt_type = PACKET_HOST;
    skb->mac_header = NET_SKB_PAD;
    skb->dev = card->dev;
    len = skb->len;
    card->dev->header_ops->create(skb, card->dev, 0,
     card->dev->dev_addr, "FAKELL",
     card->dev->addr_len);
    netif_receive_skb(skb);
   } else {
    is_vlan = qeth_l3_rebuild_skb(card, skb, hdr,
             &vlan_tag);
    len = skb->len;
    if (is_vlan && !card->options.sniffer)
     vlan_gro_receive(&card->napi,
      card->vlangrp, vlan_tag, skb);
    else
     napi_gro_receive(&card->napi, skb);
   }
   break;
  case 129:
   skb->pkt_type = PACKET_HOST;
   skb->protocol = eth_type_trans(skb, skb->dev);
   len = skb->len;
   netif_receive_skb(skb);
   break;
  default:
   dev_kfree_skb_any(skb);
   QETH_DBF_TEXT(TRACE, 3, "inbunkno");
   QETH_DBF_HEX(CTRL, 3, hdr, QETH_DBF_CTRL_LEN);
   continue;
  }
  work_done++;
  budget--;
  card->stats.rx_packets++;
  card->stats.rx_bytes += len;
 }
 return work_done;
}
