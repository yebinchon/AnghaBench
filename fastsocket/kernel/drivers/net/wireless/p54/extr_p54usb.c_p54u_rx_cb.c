
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int status; int actual_length; void* transfer_buffer; struct sk_buff* context; } ;
struct sk_buff {scalar_t__ cb; } ;
struct p54u_rx_info {struct ieee80211_hw* dev; struct urb* urb; } ;
struct TYPE_2__ {int tx_hdr_len; scalar_t__ fw_interface; scalar_t__ rx_mtu; } ;
struct p54u_priv {scalar_t__ hw_type; int rx_queue; int submitted; TYPE_1__ common; } ;
struct ieee80211_hw {struct p54u_priv* priv; } ;


 scalar_t__ FW_LM87 ;
 int GFP_ATOMIC ;
 scalar_t__ P54U_NET2280 ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 scalar_t__ p54_rx (struct ieee80211_hw*,struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_reset_tail_pointer (struct sk_buff*) ;
 void* skb_tail_pointer (struct sk_buff*) ;
 int skb_trim (struct sk_buff*,int ) ;
 int skb_unlink (struct sk_buff*,int *) ;
 scalar_t__ unlikely (int) ;
 int usb_anchor_urb (struct urb*,int *) ;
 scalar_t__ usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static void p54u_rx_cb(struct urb *urb)
{
 struct sk_buff *skb = (struct sk_buff *) urb->context;
 struct p54u_rx_info *info = (struct p54u_rx_info *)skb->cb;
 struct ieee80211_hw *dev = info->dev;
 struct p54u_priv *priv = dev->priv;

 skb_unlink(skb, &priv->rx_queue);

 if (unlikely(urb->status)) {
  dev_kfree_skb_irq(skb);
  return;
 }

 skb_put(skb, urb->actual_length);

 if (priv->hw_type == P54U_NET2280)
  skb_pull(skb, priv->common.tx_hdr_len);
 if (priv->common.fw_interface == FW_LM87) {
  skb_pull(skb, 4);
  skb_put(skb, 4);
 }

 if (p54_rx(dev, skb)) {
  skb = dev_alloc_skb(priv->common.rx_mtu + 32);
  if (unlikely(!skb)) {

   return;
  }

  info = (struct p54u_rx_info *) skb->cb;
  info->urb = urb;
  info->dev = dev;
  urb->transfer_buffer = skb_tail_pointer(skb);
  urb->context = skb;
 } else {
  if (priv->hw_type == P54U_NET2280)
   skb_push(skb, priv->common.tx_hdr_len);
  if (priv->common.fw_interface == FW_LM87) {
   skb_push(skb, 4);
   skb_put(skb, 4);
  }
  skb_reset_tail_pointer(skb);
  skb_trim(skb, 0);
  urb->transfer_buffer = skb_tail_pointer(skb);
 }
 skb_queue_tail(&priv->rx_queue, skb);
 usb_anchor_urb(urb, &priv->submitted);
 if (usb_submit_urb(urb, GFP_ATOMIC)) {
  skb_unlink(skb, &priv->rx_queue);
  usb_unanchor_urb(urb);
  dev_kfree_skb_irq(skb);
 }
}
