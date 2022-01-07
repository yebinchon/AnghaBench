
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct h4_struct {int rx_count; int * rx_skb; int rx_state; } ;


 int BT_DBG (char*,int,int) ;
 int BT_ERR (char*) ;
 int H4_W4_DATA ;
 int H4_W4_PACKET_TYPE ;
 int hci_recv_frame (int *) ;
 int kfree_skb (int *) ;
 int skb_tailroom (int *) ;

__attribute__((used)) static inline int h4_check_data_len(struct h4_struct *h4, int len)
{
 register int room = skb_tailroom(h4->rx_skb);

 BT_DBG("len %d room %d", len, room);

 if (!len) {
  hci_recv_frame(h4->rx_skb);
 } else if (len > room) {
  BT_ERR("Data length is too large");
  kfree_skb(h4->rx_skb);
 } else {
  h4->rx_state = H4_W4_DATA;
  h4->rx_count = len;
  return len;
 }

 h4->rx_state = H4_W4_PACKET_TYPE;
 h4->rx_skb = ((void*)0);
 h4->rx_count = 0;

 return 0;
}
