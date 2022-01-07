
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int dummy; } ;
struct TYPE_2__ {int buf; } ;
struct rtl8187_priv {int anchored; TYPE_1__ b_tx_status; int udev; } ;
struct ieee80211_hw {struct rtl8187_priv* priv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int rtl8187b_status_cb ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,int *,int,int ,struct ieee80211_hw*) ;
 int usb_free_urb (struct urb*) ;
 int usb_rcvbulkpipe (int ,int) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static int rtl8187b_init_status_urb(struct ieee80211_hw *dev)
{
 struct rtl8187_priv *priv = dev->priv;
 struct urb *entry;
 int ret = 0;

 entry = usb_alloc_urb(0, GFP_KERNEL);
 if (!entry)
  return -ENOMEM;

 usb_fill_bulk_urb(entry, priv->udev, usb_rcvbulkpipe(priv->udev, 9),
     &priv->b_tx_status.buf, sizeof(priv->b_tx_status.buf),
     rtl8187b_status_cb, dev);

 usb_anchor_urb(entry, &priv->anchored);
 ret = usb_submit_urb(entry, GFP_KERNEL);
 if (ret)
  usb_unanchor_urb(entry);
 usb_free_urb(entry);

 return ret;
}
