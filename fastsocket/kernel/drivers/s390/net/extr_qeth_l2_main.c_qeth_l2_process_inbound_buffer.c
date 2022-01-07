
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct sk_buff {unsigned int len; scalar_t__ cb; int protocol; int ip_summed; int dev; int pkt_type; } ;
struct TYPE_15__ {int id; } ;
struct TYPE_16__ {TYPE_4__ l2; } ;
struct qeth_hdr {TYPE_5__ hdr; } ;
struct TYPE_11__ {unsigned int rx_bytes; int rx_packets; } ;
struct TYPE_20__ {int (* data_cb ) (struct sk_buff*) ;} ;
struct TYPE_19__ {int type; } ;
struct TYPE_18__ {int pkt_seqno; } ;
struct TYPE_17__ {int checksum_type; } ;
struct TYPE_14__ {size_t b_index; int e_offset; int b_element; } ;
struct TYPE_13__ {TYPE_1__* in_q; } ;
struct qeth_card {TYPE_10__ stats; TYPE_9__ osn_info; TYPE_8__ info; TYPE_7__ seqno; TYPE_6__ options; int dev; TYPE_3__ rx; TYPE_2__ qdio; } ;
typedef int __u32 ;
struct TYPE_12__ {int * bufs; } ;


 int BUG_ON (int) ;
 int CHECKSUM_NONE ;
 int CHECKSUM_UNNECESSARY ;
 int CTRL ;
 int ETH_P_802_2 ;
 int NO_CHECKSUMMING ;
 int PACKET_HOST ;
 int QETH_CARD_TYPE_OSN ;
 int QETH_DBF_CTRL_LEN ;
 int QETH_DBF_HEX (int ,int,struct qeth_hdr*,int ) ;
 int QETH_DBF_TEXT (int ,int,char*) ;


 int TRACE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int htons (int ) ;
 int netif_receive_skb (struct sk_buff*) ;
 struct sk_buff* qeth_core_get_next_skb (struct qeth_card*,int *,int *,int *,struct qeth_hdr**) ;
 int skb_copy_to_linear_data (struct sk_buff*,struct qeth_hdr*,int) ;
 int skb_push (struct sk_buff*,int) ;
 int stub1 (struct sk_buff*) ;

__attribute__((used)) static int qeth_l2_process_inbound_buffer(struct qeth_card *card,
    int budget, int *done)
{
 int work_done = 0;
 struct sk_buff *skb;
 struct qeth_hdr *hdr;
 unsigned int len;

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
  switch (hdr->hdr.l2.id) {
  case 129:
   skb->pkt_type = PACKET_HOST;
   skb->protocol = eth_type_trans(skb, skb->dev);
   if (card->options.checksum_type == NO_CHECKSUMMING)
    skb->ip_summed = CHECKSUM_UNNECESSARY;
   else
    skb->ip_summed = CHECKSUM_NONE;
   if (skb->protocol == htons(ETH_P_802_2))
    *((__u32 *)skb->cb) = ++card->seqno.pkt_seqno;
   len = skb->len;
   netif_receive_skb(skb);
   break;
  case 128:
   if (card->info.type == QETH_CARD_TYPE_OSN) {
    skb_push(skb, sizeof(struct qeth_hdr));
    skb_copy_to_linear_data(skb, hdr,
      sizeof(struct qeth_hdr));
    len = skb->len;
    card->osn_info.data_cb(skb);
    break;
   }

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
