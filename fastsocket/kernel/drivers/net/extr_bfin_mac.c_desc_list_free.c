
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_dma_desc_tx {struct net_dma_desc_tx* next; int * skb; } ;
struct net_dma_desc_rx {struct net_dma_desc_rx* next; int * skb; } ;
typedef int dma_addr_t ;


 int CONFIG_BFIN_RX_DESC_NUM ;
 int CONFIG_BFIN_TX_DESC_NUM ;
 int bfin_mac_free (int ,scalar_t__) ;
 int dev_kfree_skb (int *) ;
 scalar_t__ rx_desc ;
 struct net_dma_desc_rx* rx_list_head ;
 scalar_t__ tx_desc ;
 struct net_dma_desc_tx* tx_list_head ;

__attribute__((used)) static void desc_list_free(void)
{
 struct net_dma_desc_rx *r;
 struct net_dma_desc_tx *t;
 int i;

 dma_addr_t dma_handle = 0;


 if (tx_desc) {
  t = tx_list_head;
  for (i = 0; i < CONFIG_BFIN_TX_DESC_NUM; i++) {
   if (t) {
    if (t->skb) {
     dev_kfree_skb(t->skb);
     t->skb = ((void*)0);
    }
    t = t->next;
   }
  }
  bfin_mac_free(dma_handle, tx_desc);
 }

 if (rx_desc) {
  r = rx_list_head;
  for (i = 0; i < CONFIG_BFIN_RX_DESC_NUM; i++) {
   if (r) {
    if (r->skb) {
     dev_kfree_skb(r->skb);
     r->skb = ((void*)0);
    }
    r = r->next;
   }
  }
  bfin_mac_free(dma_handle, rx_desc);
 }
}
