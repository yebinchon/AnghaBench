
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct hci_uart {scalar_t__ hdev; struct bcsp_struct* priv; } ;
struct bcsp_struct {int rx_state; int rx_count; int rxseq_txack; TYPE_1__* rx_skb; int message_crc; int rx_esc_state; } ;
struct TYPE_4__ {int* data; void* dev; int len; } ;


 int BCSP_CRC_INIT (int ) ;
 int BCSP_ESCSTATE_NOESC ;





 int BT_DBG (char*,struct hci_uart*,int,int,int) ;
 int BT_ERR (char*,...) ;
 int GFP_ATOMIC ;
 int bcsp_complete_rx_pkt (struct hci_uart*) ;
 int bcsp_unslip_one_byte (struct bcsp_struct*,unsigned char) ;
 int bitrev16 (int ) ;
 int bscp_get_crc (struct bcsp_struct*) ;
 TYPE_1__* bt_skb_alloc (int,int ) ;
 int kfree_skb (TYPE_1__*) ;
 int skb_trim (TYPE_1__*,int ) ;

__attribute__((used)) static int bcsp_recv(struct hci_uart *hu, void *data, int count)
{
 struct bcsp_struct *bcsp = hu->priv;
 register unsigned char *ptr;

 BT_DBG("hu %p count %d rx_state %d rx_count %ld",
  hu, count, bcsp->rx_state, bcsp->rx_count);

 ptr = data;
 while (count) {
  if (bcsp->rx_count) {
   if (*ptr == 0xc0) {
    BT_ERR("Short BCSP packet");
    kfree_skb(bcsp->rx_skb);
    bcsp->rx_state = 128;
    bcsp->rx_count = 0;
   } else
    bcsp_unslip_one_byte(bcsp, *ptr);

   ptr++; count--;
   continue;
  }

  switch (bcsp->rx_state) {
  case 132:
   if ((0xff & (u8) ~ (bcsp->rx_skb->data[0] + bcsp->rx_skb->data[1] +
     bcsp->rx_skb->data[2])) != bcsp->rx_skb->data[3]) {
    BT_ERR("Error in BCSP hdr checksum");
    kfree_skb(bcsp->rx_skb);
    bcsp->rx_state = 129;
    bcsp->rx_count = 0;
    continue;
   }
   if (bcsp->rx_skb->data[0] & 0x80
         && (bcsp->rx_skb->data[0] & 0x07) != bcsp->rxseq_txack) {
    BT_ERR ("Out-of-order packet arrived, got %u expected %u",
     bcsp->rx_skb->data[0] & 0x07, bcsp->rxseq_txack);

    kfree_skb(bcsp->rx_skb);
    bcsp->rx_state = 129;
    bcsp->rx_count = 0;
    continue;
   }
   bcsp->rx_state = 130;
   bcsp->rx_count = (bcsp->rx_skb->data[1] >> 4) +
     (bcsp->rx_skb->data[2] << 4);
   continue;

  case 130:
   if (bcsp->rx_skb->data[0] & 0x40) {
    bcsp->rx_state = 131;
    bcsp->rx_count = 2;
   } else
    bcsp_complete_rx_pkt(hu);
   continue;

  case 131:
   if (bitrev16(bcsp->message_crc) != bscp_get_crc(bcsp)) {
    BT_ERR ("Checksum failed: computed %04x received %04x",
     bitrev16(bcsp->message_crc),
     bscp_get_crc(bcsp));

    kfree_skb(bcsp->rx_skb);
    bcsp->rx_state = 129;
    bcsp->rx_count = 0;
    continue;
   }
   skb_trim(bcsp->rx_skb, bcsp->rx_skb->len - 2);
   bcsp_complete_rx_pkt(hu);
   continue;

  case 129:
   switch (*ptr) {
   case 0xc0:
    bcsp->rx_state = 128;
    break;
   default:

    break;
   }
   ptr++; count--;
   break;

  case 128:
   switch (*ptr) {
   case 0xc0:
    ptr++; count--;
    break;

   default:
    bcsp->rx_state = 132;
    bcsp->rx_count = 4;
    bcsp->rx_esc_state = BCSP_ESCSTATE_NOESC;
    BCSP_CRC_INIT(bcsp->message_crc);





    bcsp->rx_skb = bt_skb_alloc(0x1005, GFP_ATOMIC);
    if (!bcsp->rx_skb) {
     BT_ERR("Can't allocate mem for new packet");
     bcsp->rx_state = 129;
     bcsp->rx_count = 0;
     return 0;
    }
    bcsp->rx_skb->dev = (void *) hu->hdev;
    break;
   }
   break;
  }
 }
 return count;
}
