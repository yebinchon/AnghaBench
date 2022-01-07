
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dev; struct sk_buff* context; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int p54_free_skb (struct ieee80211_hw*,struct sk_buff*) ;
 struct ieee80211_hw* usb_get_intfdata (int ) ;
 int usb_ifnum_to_if (int ,int ) ;

__attribute__((used)) static void p54u_tx_cb(struct urb *urb)
{
 struct sk_buff *skb = urb->context;
 struct ieee80211_hw *dev =
  usb_get_intfdata(usb_ifnum_to_if(urb->dev, 0));

 p54_free_skb(dev, skb);
}
