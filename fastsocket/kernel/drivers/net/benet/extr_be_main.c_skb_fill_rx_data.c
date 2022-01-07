
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ data_len; int truesize; scalar_t__ len; int tail; int data; } ;
struct be_rx_page_info {scalar_t__ page_offset; int * page; } ;
struct be_queue_info {int len; } ;
struct be_rx_obj {struct be_queue_info q; } ;
struct be_rx_compl_info {scalar_t__ pkt_size; int num_rcvd; int rxq_idx; } ;
struct TYPE_5__ {scalar_t__ page_offset; } ;
struct TYPE_4__ {int nr_frags; TYPE_2__* frags; } ;


 scalar_t__ BE_HDR_LEN ;
 int BUG_ON (int) ;
 scalar_t__ ETH_HLEN ;
 scalar_t__ MAX_SKB_FRAGS ;
 struct be_rx_page_info* get_rx_page_info (struct be_rx_obj*,int ) ;
 int index_inc (int *,int ) ;
 int memcpy (int ,int *,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 int * page_address (int *) ;
 int prefetch (int *) ;
 int put_page (int *) ;
 scalar_t__ rx_frag_size ;
 int skb_frag_set_page (struct sk_buff*,scalar_t__,int *) ;
 int skb_frag_size_add (TYPE_2__*,scalar_t__) ;
 int skb_frag_size_set (TYPE_2__*,scalar_t__) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void skb_fill_rx_data(struct be_rx_obj *rxo, struct sk_buff *skb,
        struct be_rx_compl_info *rxcp)
{
 struct be_queue_info *rxq = &rxo->q;
 struct be_rx_page_info *page_info;
 u16 i, j;
 u16 hdr_len, curr_frag_len, remaining;
 u8 *start;

 page_info = get_rx_page_info(rxo, rxcp->rxq_idx);
 start = page_address(page_info->page) + page_info->page_offset;
 prefetch(start);


 curr_frag_len = min(rxcp->pkt_size, rx_frag_size);

 skb->len = curr_frag_len;
 if (curr_frag_len <= BE_HDR_LEN) {
  memcpy(skb->data, start, curr_frag_len);

  put_page(page_info->page);
  skb->data_len = 0;
  skb->tail += curr_frag_len;
 } else {
  hdr_len = ETH_HLEN;
  memcpy(skb->data, start, hdr_len);
  skb_shinfo(skb)->nr_frags = 1;
  skb_frag_set_page(skb, 0, page_info->page);
  skb_shinfo(skb)->frags[0].page_offset =
     page_info->page_offset + hdr_len;
  skb_frag_size_set(&skb_shinfo(skb)->frags[0], curr_frag_len - hdr_len);
  skb->data_len = curr_frag_len - hdr_len;
  skb->truesize += rx_frag_size;
  skb->tail += hdr_len;
 }
 page_info->page = ((void*)0);

 if (rxcp->pkt_size <= rx_frag_size) {
  BUG_ON(rxcp->num_rcvd != 1);
  return;
 }


 index_inc(&rxcp->rxq_idx, rxq->len);
 remaining = rxcp->pkt_size - curr_frag_len;
 for (i = 1, j = 0; i < rxcp->num_rcvd; i++) {
  page_info = get_rx_page_info(rxo, rxcp->rxq_idx);
  curr_frag_len = min(remaining, rx_frag_size);


  if (page_info->page_offset == 0) {

   j++;
   skb_frag_set_page(skb, j, page_info->page);
   skb_shinfo(skb)->frags[j].page_offset =
       page_info->page_offset;
   skb_frag_size_set(&skb_shinfo(skb)->frags[j], 0);
   skb_shinfo(skb)->nr_frags++;
  } else {
   put_page(page_info->page);
  }

  skb_frag_size_add(&skb_shinfo(skb)->frags[j], curr_frag_len);
  skb->len += curr_frag_len;
  skb->data_len += curr_frag_len;
  skb->truesize += rx_frag_size;
  remaining -= curr_frag_len;
  index_inc(&rxcp->rxq_idx, rxq->len);
  page_info->page = ((void*)0);
 }
 BUG_ON(j > MAX_SKB_FRAGS);
}
