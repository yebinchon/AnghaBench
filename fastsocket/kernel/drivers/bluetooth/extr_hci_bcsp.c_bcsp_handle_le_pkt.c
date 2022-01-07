
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct hci_uart {struct bcsp_struct* priv; } ;
struct bcsp_struct {TYPE_1__* rx_skb; int unrel; } ;
struct TYPE_4__ {int pkt_type; } ;
struct TYPE_3__ {int* data; } ;


 int BCSP_LE_PKT ;
 int BT_DBG (char*) ;
 int BT_ERR (char*) ;
 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (int,int ) ;
 TYPE_2__* bt_cb (struct sk_buff*) ;
 int hci_uart_tx_wakeup (struct hci_uart*) ;
 int memcmp (int*,int*,int) ;
 int memcpy (int ,int*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_queue_head (int *,struct sk_buff*) ;

__attribute__((used)) static void bcsp_handle_le_pkt(struct hci_uart *hu)
{
 struct bcsp_struct *bcsp = hu->priv;
 u8 conf_pkt[4] = { 0xad, 0xef, 0xac, 0xed };
 u8 conf_rsp_pkt[4] = { 0xde, 0xad, 0xd0, 0xd0 };
 u8 sync_pkt[4] = { 0xda, 0xdc, 0xed, 0xed };


 if (bcsp->rx_skb->data[1] >> 4 == 4 && bcsp->rx_skb->data[2] == 0 &&
   !memcmp(&bcsp->rx_skb->data[4], conf_pkt, 4)) {
  struct sk_buff *nskb = alloc_skb(4, GFP_ATOMIC);

  BT_DBG("Found a LE conf pkt");
  if (!nskb)
   return;
  memcpy(skb_put(nskb, 4), conf_rsp_pkt, 4);
  bt_cb(nskb)->pkt_type = BCSP_LE_PKT;

  skb_queue_head(&bcsp->unrel, nskb);
  hci_uart_tx_wakeup(hu);
 }

 else if (bcsp->rx_skb->data[1] >> 4 == 4 && bcsp->rx_skb->data[2] == 0 &&
   !memcmp(&bcsp->rx_skb->data[4], sync_pkt, 4)) {
  BT_ERR("Found a LE sync pkt, card has reset");
 }
}
