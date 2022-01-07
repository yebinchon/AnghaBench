
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; void* dev; } ;
struct TYPE_3__ {int sco_tx; int acl_tx; int cmd_tx; } ;
struct hci_dev {TYPE_1__ stat; struct bfusb_data* driver_data; int flags; } ;
struct bfusb_data {int bulk_pkt_size; int lock; int transmit_q; } ;
struct TYPE_4__ {int pkt_type; } ;


 int BFUSB_MAX_BLOCK_SIZE ;
 int BT_DBG (char*,struct hci_dev*,struct sk_buff*,int,int) ;
 int BT_ERR (char*) ;
 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_ATOMIC ;


 int HCI_RUNNING ;

 int bfusb_tx_wakeup (struct bfusb_data*) ;
 TYPE_2__* bt_cb (struct sk_buff*) ;
 struct sk_buff* bt_skb_alloc (int,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int ,unsigned char*,int) ;
 int min_t (int ,int,int) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int skb_copy_from_linear_data_offset (struct sk_buff*,int,int ,int) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int test_bit (int ,int *) ;
 int uint ;

__attribute__((used)) static int bfusb_send_frame(struct sk_buff *skb)
{
 struct hci_dev *hdev = (struct hci_dev *) skb->dev;
 struct bfusb_data *data;
 struct sk_buff *nskb;
 unsigned char buf[3];
 int sent = 0, size, count;

 BT_DBG("hdev %p skb %p type %d len %d", hdev, skb, bt_cb(skb)->pkt_type, skb->len);

 if (!hdev) {
  BT_ERR("Frame for unknown HCI device (hdev=NULL)");
  return -ENODEV;
 }

 if (!test_bit(HCI_RUNNING, &hdev->flags))
  return -EBUSY;

 data = hdev->driver_data;

 switch (bt_cb(skb)->pkt_type) {
 case 129:
  hdev->stat.cmd_tx++;
  break;
 case 130:
  hdev->stat.acl_tx++;
  break;
 case 128:
  hdev->stat.sco_tx++;
  break;
 };


 memcpy(skb_push(skb, 1), &bt_cb(skb)->pkt_type, 1);

 count = skb->len;


 nskb = bt_skb_alloc(count + 32, GFP_ATOMIC);
 if (!nskb) {
  BT_ERR("Can't allocate memory for new packet");
  return -ENOMEM;
 }

 nskb->dev = (void *) data;

 while (count) {
  size = min_t(uint, count, BFUSB_MAX_BLOCK_SIZE);

  buf[0] = 0xc1 | ((sent == 0) ? 0x04 : 0) | ((count == size) ? 0x08 : 0);
  buf[1] = 0x00;
  buf[2] = (size == BFUSB_MAX_BLOCK_SIZE) ? 0 : size;

  memcpy(skb_put(nskb, 3), buf, 3);
  skb_copy_from_linear_data_offset(skb, sent, skb_put(nskb, size), size);

  sent += size;
  count -= size;
 }


 if ((nskb->len % data->bulk_pkt_size) == 0) {
  buf[0] = 0xdd;
  buf[1] = 0x00;
  memcpy(skb_put(nskb, 2), buf, 2);
 }

 read_lock(&data->lock);

 skb_queue_tail(&data->transmit_q, nskb);
 bfusb_tx_wakeup(data);

 read_unlock(&data->lock);

 kfree_skb(skb);

 return 0;
}
