
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {int* data; void* dev; } ;
struct TYPE_5__ {int byte_rx; int err_rx; } ;
struct hci_dev {TYPE_2__ stat; } ;
struct btmrvl_sdio_card {int ioport; int func; } ;
struct TYPE_4__ {struct btmrvl_sdio_card* card; struct hci_dev* hcidev; } ;
struct btmrvl_private {TYPE_1__ btmrvl_dev; } ;
struct TYPE_6__ {int pkt_type; } ;


 int ALLOC_BUF_SIZE ;
 int BTSDIO_DMA_ALIGN ;
 int BT_ERR (char*,...) ;
 int DUMP_PREFIX_OFFSET ;
 int EINVAL ;
 int EIO ;
 int GFP_ATOMIC ;



 int HCI_VENDOR_PKT ;

 int SDIO_BLOCK_SIZE ;
 int SDIO_HEADER_LEN ;
 TYPE_3__* bt_cb (struct sk_buff*) ;
 struct sk_buff* bt_skb_alloc (int,int ) ;
 int btmrvl_check_evtpkt (struct btmrvl_private*,struct sk_buff*) ;
 int btmrvl_process_event (struct btmrvl_private*,struct sk_buff*) ;
 int btmrvl_sdio_read_rx_len (struct btmrvl_sdio_card*,int*) ;
 int hci_recv_frame (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int print_hex_dump_bytes (char*,int ,int*,int) ;
 int sdio_readsb (int ,int*,int ,int) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static int btmrvl_sdio_card_to_host(struct btmrvl_private *priv)
{
 u16 buf_len = 0;
 int ret, buf_block_len, blksz;
 struct sk_buff *skb = ((void*)0);
 u32 type;
 u8 *payload = ((void*)0);
 struct hci_dev *hdev = priv->btmrvl_dev.hcidev;
 struct btmrvl_sdio_card *card = priv->btmrvl_dev.card;

 if (!card || !card->func) {
  BT_ERR("card or function is NULL!");
  ret = -EINVAL;
  goto exit;
 }


 ret = btmrvl_sdio_read_rx_len(card, &buf_len);
 if (ret < 0) {
  BT_ERR("read rx_len failed");
  ret = -EIO;
  goto exit;
 }

 blksz = SDIO_BLOCK_SIZE;
 buf_block_len = (buf_len + blksz - 1) / blksz;

 if (buf_len <= SDIO_HEADER_LEN
   || (buf_block_len * blksz) > ALLOC_BUF_SIZE) {
  BT_ERR("invalid packet length: %d", buf_len);
  ret = -EINVAL;
  goto exit;
 }


 skb = bt_skb_alloc(buf_block_len * blksz + BTSDIO_DMA_ALIGN,
        GFP_ATOMIC);
 if (skb == ((void*)0)) {
  BT_ERR("No free skb");
  goto exit;
 }

 if ((unsigned long) skb->data & (BTSDIO_DMA_ALIGN - 1)) {
  skb_put(skb, (unsigned long) skb->data &
     (BTSDIO_DMA_ALIGN - 1));
  skb_pull(skb, (unsigned long) skb->data &
     (BTSDIO_DMA_ALIGN - 1));
 }

 payload = skb->data;

 ret = sdio_readsb(card->func, payload, card->ioport,
     buf_block_len * blksz);
 if (ret < 0) {
  BT_ERR("readsb failed: %d", ret);
  ret = -EIO;
  goto exit;
 }





 buf_len = payload[0];
 buf_len |= (u16) payload[1] << 8;
 type = payload[3];

 switch (type) {
 case 131:
 case 129:
 case 130:
  bt_cb(skb)->pkt_type = type;
  skb->dev = (void *)hdev;
  skb_put(skb, buf_len);
  skb_pull(skb, SDIO_HEADER_LEN);

  if (type == 130)
   btmrvl_check_evtpkt(priv, skb);

  hci_recv_frame(skb);
  hdev->stat.byte_rx += buf_len;
  break;

 case 128:
  bt_cb(skb)->pkt_type = HCI_VENDOR_PKT;
  skb->dev = (void *)hdev;
  skb_put(skb, buf_len);
  skb_pull(skb, SDIO_HEADER_LEN);

  if (btmrvl_process_event(priv, skb))
   hci_recv_frame(skb);

  hdev->stat.byte_rx += buf_len;
  break;

 default:
  BT_ERR("Unknow packet type:%d", type);
  print_hex_dump_bytes("", DUMP_PREFIX_OFFSET, payload,
      blksz * buf_block_len);

  kfree_skb(skb);
  skb = ((void*)0);
  break;
 }

exit:
 if (ret) {
  hdev->stat.err_rx++;
  if (skb)
   kfree_skb(skb);
 }

 return ret;
}
