
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int status; scalar_t__ context; } ;
struct sk_buff {scalar_t__ len; scalar_t__ dev; } ;
struct bfusb_data {int lock; int completed_q; int pending_q; TYPE_2__* hdev; int pending_tx; } ;
struct TYPE_3__ {int err_tx; int byte_tx; } ;
struct TYPE_4__ {TYPE_1__ stat; int flags; } ;


 int BT_DBG (char*,struct bfusb_data*,struct urb*,struct sk_buff*,scalar_t__) ;
 int HCI_RUNNING ;
 int atomic_dec (int *) ;
 int bfusb_tx_wakeup (struct bfusb_data*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_unlink (struct sk_buff*,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void bfusb_tx_complete(struct urb *urb)
{
 struct sk_buff *skb = (struct sk_buff *) urb->context;
 struct bfusb_data *data = (struct bfusb_data *) skb->dev;

 BT_DBG("bfusb %p urb %p skb %p len %d", data, urb, skb, skb->len);

 atomic_dec(&data->pending_tx);

 if (!test_bit(HCI_RUNNING, &data->hdev->flags))
  return;

 if (!urb->status)
  data->hdev->stat.byte_tx += skb->len;
 else
  data->hdev->stat.err_tx++;

 read_lock(&data->lock);

 skb_unlink(skb, &data->pending_q);
 skb_queue_tail(&data->completed_q, skb);

 bfusb_tx_wakeup(data);

 read_unlock(&data->lock);
}
