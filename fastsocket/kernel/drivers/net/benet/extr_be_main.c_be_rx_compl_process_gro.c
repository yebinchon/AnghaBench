
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ data_len; int rxhash; int ip_summed; int truesize; } ;
struct napi_struct {int dummy; } ;
struct be_rx_page_info {scalar_t__ page_offset; int page; } ;
struct be_queue_info {int len; } ;
struct be_rx_obj {struct be_queue_info q; struct be_adapter* adapter; } ;
struct be_rx_compl_info {scalar_t__ pkt_size; scalar_t__ num_rcvd; int vlan_tag; scalar_t__ vlanf; int rss_hash; int rxq_idx; } ;
struct be_adapter {int vlan_grp; TYPE_1__* netdev; struct be_rx_obj* rx_obj; } ;
struct TYPE_7__ {scalar_t__ page_offset; } ;
struct TYPE_6__ {scalar_t__ nr_frags; TYPE_3__* frags; } ;
struct TYPE_5__ {int features; } ;


 int BUG_ON (int) ;
 int CHECKSUM_UNNECESSARY ;
 scalar_t__ MAX_SKB_FRAGS ;
 int NETIF_F_RXHASH ;
 int be_rx_compl_discard (struct be_rx_obj*,struct be_rx_compl_info*) ;
 struct be_rx_page_info* get_rx_page_info (struct be_rx_obj*,int ) ;
 int index_inc (int *,int ) ;
 int memset (struct be_rx_page_info*,int ,int) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 struct sk_buff* napi_get_frags (struct napi_struct*) ;
 int napi_gro_frags (struct napi_struct*) ;
 int put_page (int ) ;
 scalar_t__ rx_frag_size ;
 int skb_frag_set_page (struct sk_buff*,scalar_t__,int ) ;
 int skb_frag_size_add (TYPE_3__*,scalar_t__) ;
 int skb_frag_size_set (TYPE_3__*,int ) ;
 int skb_record_rx_queue (struct sk_buff*,int) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int vlan_gro_frags (struct napi_struct*,int ,int ) ;

void be_rx_compl_process_gro(struct be_rx_obj *rxo, struct napi_struct *napi,
        struct be_rx_compl_info *rxcp)
{
 struct be_adapter *adapter = rxo->adapter;
 struct be_rx_page_info *page_info;
 struct sk_buff *skb = ((void*)0);
 struct be_queue_info *rxq = &rxo->q;
 u16 remaining, curr_frag_len;
 u16 i, j;

 skb = napi_get_frags(napi);
 if (!skb) {
  be_rx_compl_discard(rxo, rxcp);
  return;
 }

 remaining = rxcp->pkt_size;
 for (i = 0, j = -1; i < rxcp->num_rcvd; i++) {
  page_info = get_rx_page_info(rxo, rxcp->rxq_idx);

  curr_frag_len = min(remaining, rx_frag_size);


  if (i == 0 || page_info->page_offset == 0) {

   j++;
   skb_frag_set_page(skb, j, page_info->page);
   skb_shinfo(skb)->frags[j].page_offset =
       page_info->page_offset;
   skb_frag_size_set(&skb_shinfo(skb)->frags[j], 0);
  } else {
   put_page(page_info->page);
  }
  skb_frag_size_add(&skb_shinfo(skb)->frags[j], curr_frag_len);
  skb->truesize += rx_frag_size;
  remaining -= curr_frag_len;
  index_inc(&rxcp->rxq_idx, rxq->len);
  memset(page_info, 0, sizeof(*page_info));
 }
 BUG_ON(j > MAX_SKB_FRAGS);

 skb_shinfo(skb)->nr_frags = j + 1;
 skb->len = rxcp->pkt_size;
 skb->data_len = rxcp->pkt_size;
 skb->ip_summed = CHECKSUM_UNNECESSARY;
 skb_record_rx_queue(skb, rxo - &adapter->rx_obj[0]);
 if (adapter->netdev->features & NETIF_F_RXHASH)
  skb->rxhash = rxcp->rss_hash;

 if (rxcp->vlanf)
  vlan_gro_frags(napi, adapter->vlan_grp, rxcp->vlan_tag);
 else
  napi_gro_frags(napi);
}
