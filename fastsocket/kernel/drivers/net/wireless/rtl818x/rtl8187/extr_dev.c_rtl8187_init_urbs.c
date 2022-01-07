
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct sk_buff {scalar_t__ cb; } ;
struct rtl8187_rx_info {struct ieee80211_hw* dev; struct urb* urb; } ;
struct rtl8187_priv {int anchored; int rx_queue; scalar_t__ is_rtl8187b; int udev; } ;
struct ieee80211_hw {struct rtl8187_priv* priv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int RTL8187_MAX_RX ;
 struct sk_buff* __dev_alloc_skb (int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int rtl8187_rx_cb ;
 int skb_queue_len (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_tail_pointer (struct sk_buff*) ;
 int skb_unlink (struct sk_buff*,int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,int ,int ,int ,struct sk_buff*) ;
 int usb_free_urb (struct urb*) ;
 int usb_kill_anchored_urbs (int *) ;
 int usb_rcvbulkpipe (int ,int) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static int rtl8187_init_urbs(struct ieee80211_hw *dev)
{
 struct rtl8187_priv *priv = dev->priv;
 struct urb *entry = ((void*)0);
 struct sk_buff *skb;
 struct rtl8187_rx_info *info;
 int ret = 0;

 while (skb_queue_len(&priv->rx_queue) < 16) {
  skb = __dev_alloc_skb(RTL8187_MAX_RX, GFP_KERNEL);
  if (!skb) {
   ret = -ENOMEM;
   goto err;
  }
  entry = usb_alloc_urb(0, GFP_KERNEL);
  if (!entry) {
   ret = -ENOMEM;
   goto err;
  }
  usb_fill_bulk_urb(entry, priv->udev,
      usb_rcvbulkpipe(priv->udev,
      priv->is_rtl8187b ? 3 : 1),
      skb_tail_pointer(skb),
      RTL8187_MAX_RX, rtl8187_rx_cb, skb);
  info = (struct rtl8187_rx_info *)skb->cb;
  info->urb = entry;
  info->dev = dev;
  skb_queue_tail(&priv->rx_queue, skb);
  usb_anchor_urb(entry, &priv->anchored);
  ret = usb_submit_urb(entry, GFP_KERNEL);
  if (ret) {
   skb_unlink(skb, &priv->rx_queue);
   usb_unanchor_urb(entry);
   goto err;
  }
  usb_free_urb(entry);
 }
 return ret;

err:
 usb_free_urb(entry);
 kfree_skb(skb);
 usb_kill_anchored_urbs(&priv->anchored);
 return ret;
}
