
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tx_buf {struct tx_buf* buf; int list; int skb_queue; struct hif_device_usb* hif_dev; int urb; } ;
struct TYPE_2__ {int tx_buf_cnt; int tx_buf; int tx_skb_queue; int tx_lock; int tx_pending; } ;
struct hif_device_usb {TYPE_1__ tx; int mgmt_submitted; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MAX_TX_BUF_SIZE ;
 int MAX_TX_URB_NUM ;
 int __skb_queue_head_init (int *) ;
 int ath9k_hif_usb_dealloc_tx_urbs (struct hif_device_usb*) ;
 int init_usb_anchor (int *) ;
 int kfree (struct tx_buf*) ;
 void* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_init (int *) ;
 int usb_alloc_urb (int ,int ) ;

__attribute__((used)) static int ath9k_hif_usb_alloc_tx_urbs(struct hif_device_usb *hif_dev)
{
 struct tx_buf *tx_buf;
 int i;

 INIT_LIST_HEAD(&hif_dev->tx.tx_buf);
 INIT_LIST_HEAD(&hif_dev->tx.tx_pending);
 spin_lock_init(&hif_dev->tx.tx_lock);
 __skb_queue_head_init(&hif_dev->tx.tx_skb_queue);
 init_usb_anchor(&hif_dev->mgmt_submitted);

 for (i = 0; i < MAX_TX_URB_NUM; i++) {
  tx_buf = kzalloc(sizeof(struct tx_buf), GFP_KERNEL);
  if (!tx_buf)
   goto err;

  tx_buf->buf = kzalloc(MAX_TX_BUF_SIZE, GFP_KERNEL);
  if (!tx_buf->buf)
   goto err;

  tx_buf->urb = usb_alloc_urb(0, GFP_KERNEL);
  if (!tx_buf->urb)
   goto err;

  tx_buf->hif_dev = hif_dev;
  __skb_queue_head_init(&tx_buf->skb_queue);

  list_add_tail(&tx_buf->list, &hif_dev->tx.tx_buf);
 }

 hif_dev->tx.tx_buf_cnt = MAX_TX_URB_NUM;

 return 0;
err:
 if (tx_buf) {
  kfree(tx_buf->buf);
  kfree(tx_buf);
 }
 ath9k_hif_usb_dealloc_tx_urbs(hif_dev);
 return -ENOMEM;
}
