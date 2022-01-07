
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int flags; int tx_skb_cnt; scalar_t__ tx_buf_cnt; int tx_lock; int tx_skb_queue; } ;
struct hif_device_usb {TYPE_1__ tx; } ;
struct ath9k_htc_tx_ctl {scalar_t__ type; } ;


 scalar_t__ ATH9K_HTC_AMPDU ;
 scalar_t__ ATH9K_HTC_BEACON ;
 scalar_t__ ATH9K_HTC_MGMT ;
 scalar_t__ ATH9K_HTC_NORMAL ;
 int ENODEV ;
 int ENOMEM ;
 int HIF_USB_TX_STOP ;
 struct ath9k_htc_tx_ctl* HTC_SKB_CB (struct sk_buff*) ;
 int MAX_TX_BUF_NUM ;
 scalar_t__ MAX_TX_URB_NUM ;
 int __hif_usb_tx (struct hif_device_usb*) ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 int hif_usb_send_mgmt (struct hif_device_usb*,struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int hif_usb_send_tx(struct hif_device_usb *hif_dev, struct sk_buff *skb)
{
 struct ath9k_htc_tx_ctl *tx_ctl;
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&hif_dev->tx.tx_lock, flags);

 if (hif_dev->tx.flags & HIF_USB_TX_STOP) {
  spin_unlock_irqrestore(&hif_dev->tx.tx_lock, flags);
  return -ENODEV;
 }


 if (hif_dev->tx.tx_skb_cnt > MAX_TX_BUF_NUM) {
  spin_unlock_irqrestore(&hif_dev->tx.tx_lock, flags);
  return -ENOMEM;
 }

 spin_unlock_irqrestore(&hif_dev->tx.tx_lock, flags);

 tx_ctl = HTC_SKB_CB(skb);


 if ((tx_ctl->type == ATH9K_HTC_MGMT) ||
     (tx_ctl->type == ATH9K_HTC_BEACON)) {
  ret = hif_usb_send_mgmt(hif_dev, skb);
 }

 spin_lock_irqsave(&hif_dev->tx.tx_lock, flags);

 if ((tx_ctl->type == ATH9K_HTC_NORMAL) ||
     (tx_ctl->type == ATH9K_HTC_AMPDU)) {
  __skb_queue_tail(&hif_dev->tx.tx_skb_queue, skb);
  hif_dev->tx.tx_skb_cnt++;
 }


 if ((hif_dev->tx.tx_buf_cnt == MAX_TX_URB_NUM) &&
     (hif_dev->tx.tx_skb_cnt < 2)) {
  __hif_usb_tx(hif_dev);
 }

 spin_unlock_irqrestore(&hif_dev->tx.tx_lock, flags);

 return ret;
}
