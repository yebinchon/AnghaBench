
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ll_struct {int rx_count; int * rx_skb; int rx_state; } ;


 int BT_DBG (char*,int,int) ;
 int BT_ERR (char*) ;
 int HCILL_W4_DATA ;
 int HCILL_W4_PACKET_TYPE ;
 int hci_recv_frame (int *) ;
 int kfree_skb (int *) ;
 int skb_tailroom (int *) ;

__attribute__((used)) static inline int ll_check_data_len(struct ll_struct *ll, int len)
{
 register int room = skb_tailroom(ll->rx_skb);

 BT_DBG("len %d room %d", len, room);

 if (!len) {
  hci_recv_frame(ll->rx_skb);
 } else if (len > room) {
  BT_ERR("Data length is too large");
  kfree_skb(ll->rx_skb);
 } else {
  ll->rx_state = HCILL_W4_DATA;
  ll->rx_count = len;
  return len;
 }

 ll->rx_state = HCILL_W4_PACKET_TYPE;
 ll->rx_skb = ((void*)0);
 ll->rx_count = 0;

 return 0;
}
