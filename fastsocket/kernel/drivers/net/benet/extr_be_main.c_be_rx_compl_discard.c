
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct be_rx_page_info {int page; } ;
struct be_queue_info {int len; } ;
struct be_rx_obj {struct be_queue_info q; } ;
struct be_rx_compl_info {scalar_t__ num_rcvd; int rxq_idx; } ;


 struct be_rx_page_info* get_rx_page_info (struct be_rx_obj*,int ) ;
 int index_inc (int *,int ) ;
 int memset (struct be_rx_page_info*,int ,int) ;
 int put_page (int ) ;

__attribute__((used)) static void be_rx_compl_discard(struct be_rx_obj *rxo,
    struct be_rx_compl_info *rxcp)
{
 struct be_queue_info *rxq = &rxo->q;
 struct be_rx_page_info *page_info;
 u16 i, num_rcvd = rxcp->num_rcvd;

 for (i = 0; i < num_rcvd; i++) {
  page_info = get_rx_page_info(rxo, rxcp->rxq_idx);
  put_page(page_info->page);
  memset(page_info, 0, sizeof(*page_info));
  index_inc(&rxcp->rxq_idx, rxq->len);
 }
}
