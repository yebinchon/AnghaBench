
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct hci_dev {scalar_t__ driver_data; } ;
typedef int cmd ;
struct TYPE_4__ {int txq; } ;
typedef TYPE_1__ bluecard_info_t ;
struct TYPE_5__ {int pkt_type; } ;


 int BT_ERR (char*) ;
 int GFP_ATOMIC ;
 int HCI_COMMAND_PKT ;
 int HCI_MAX_FRAME_SIZE ;
 int PKT_BAUD_RATE_115200 ;
 int PKT_BAUD_RATE_230400 ;
 int PKT_BAUD_RATE_460800 ;
 int PKT_BAUD_RATE_57600 ;
 int bluecard_write_wakeup (TYPE_1__*) ;
 TYPE_2__* bt_cb (struct sk_buff*) ;
 struct sk_buff* bt_skb_alloc (int ,int ) ;
 int memcpy (int ,unsigned char*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static int bluecard_hci_set_baud_rate(struct hci_dev *hdev, int baud)
{
 bluecard_info_t *info = (bluecard_info_t *)(hdev->driver_data);
 struct sk_buff *skb;


 unsigned char cmd[] = { HCI_COMMAND_PKT, 0x09, 0xfc, 0x01, 0x03 };

 if (!(skb = bt_skb_alloc(HCI_MAX_FRAME_SIZE, GFP_ATOMIC))) {
  BT_ERR("Can't allocate mem for new packet");
  return -1;
 }

 switch (baud) {
 case 460800:
  cmd[4] = 0x00;
  bt_cb(skb)->pkt_type = PKT_BAUD_RATE_460800;
  break;
 case 230400:
  cmd[4] = 0x01;
  bt_cb(skb)->pkt_type = PKT_BAUD_RATE_230400;
  break;
 case 115200:
  cmd[4] = 0x02;
  bt_cb(skb)->pkt_type = PKT_BAUD_RATE_115200;
  break;
 case 57600:

 default:
  cmd[4] = 0x03;
  bt_cb(skb)->pkt_type = PKT_BAUD_RATE_57600;
  break;
 }

 memcpy(skb_put(skb, sizeof(cmd)), cmd, sizeof(cmd));

 skb_queue_tail(&(info->txq), skb);

 bluecard_write_wakeup(info);

 return 0;
}
