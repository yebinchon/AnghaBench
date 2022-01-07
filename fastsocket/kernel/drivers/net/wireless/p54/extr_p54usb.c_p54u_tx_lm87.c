
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int transfer_flags; } ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct p54u_priv {int submitted; int udev; } ;
struct p54_hdr {int req_id; } ;
struct lm87_tx_hdr {int device_addr; int chksum; } ;
struct ieee80211_hw {struct p54u_priv* priv; } ;
typedef int __le32 ;


 scalar_t__ FREE_AFTER_TX (struct sk_buff*) ;
 int GFP_ATOMIC ;
 int P54U_PIPE_DATA ;
 int URB_ZERO_PACKET ;
 int p54_free_skb (struct ieee80211_hw*,struct sk_buff*) ;
 int p54u_lm87_chksum (int *,scalar_t__) ;
 int p54u_tx_cb ;
 int p54u_tx_dummy_cb ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,struct lm87_tx_hdr*,scalar_t__,int ,struct sk_buff*) ;
 int usb_free_urb (struct urb*) ;
 int usb_sndbulkpipe (int ,int ) ;
 scalar_t__ usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static void p54u_tx_lm87(struct ieee80211_hw *dev, struct sk_buff *skb)
{
 struct p54u_priv *priv = dev->priv;
 struct urb *data_urb;
 struct lm87_tx_hdr *hdr = (void *)skb->data - sizeof(*hdr);

 data_urb = usb_alloc_urb(0, GFP_ATOMIC);
 if (!data_urb) {
  p54_free_skb(dev, skb);
  return;
 }

 hdr->chksum = p54u_lm87_chksum((__le32 *)skb->data, skb->len);
 hdr->device_addr = ((struct p54_hdr *)skb->data)->req_id;

 usb_fill_bulk_urb(data_urb, priv->udev,
     usb_sndbulkpipe(priv->udev, P54U_PIPE_DATA),
     hdr, skb->len + sizeof(*hdr), FREE_AFTER_TX(skb) ?
     p54u_tx_cb : p54u_tx_dummy_cb, skb);
 data_urb->transfer_flags |= URB_ZERO_PACKET;

 usb_anchor_urb(data_urb, &priv->submitted);
 if (usb_submit_urb(data_urb, GFP_ATOMIC)) {
  usb_unanchor_urb(data_urb);
  p54_free_skb(dev, skb);
 }
 usb_free_urb(data_urb);
}
