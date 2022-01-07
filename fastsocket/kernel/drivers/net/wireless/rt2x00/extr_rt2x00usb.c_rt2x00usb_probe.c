
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct usb_device {int dummy; } ;
struct rt2x00_ops {int hw; } ;
struct rt2x00_dev {int txstatus_timer; int txdone_work; int rxdone_work; struct ieee80211_hw* hw; struct rt2x00_ops const* ops; int * dev; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;


 int CLOCK_MONOTONIC ;
 int ENOMEM ;
 int HRTIMER_MODE_REL ;
 int INIT_WORK (int *,int ) ;
 int RT2X00_CHIP_INTF_USB ;
 int hrtimer_init (int *,int ,int ) ;
 struct ieee80211_hw* ieee80211_alloc_hw (int,int ) ;
 int ieee80211_free_hw (struct ieee80211_hw*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int rt2x00_probe_err (char*) ;
 int rt2x00_set_chip_intf (struct rt2x00_dev*,int ) ;
 int rt2x00lib_probe_dev (struct rt2x00_dev*) ;
 int rt2x00usb_alloc_reg (struct rt2x00_dev*) ;
 int rt2x00usb_free_reg (struct rt2x00_dev*) ;
 int rt2x00usb_work_rxdone ;
 int rt2x00usb_work_txdone ;
 struct usb_device* usb_get_dev (struct usb_device*) ;
 int usb_put_dev (struct usb_device*) ;
 int usb_reset_device (struct usb_device*) ;
 int usb_set_intfdata (struct usb_interface*,struct ieee80211_hw*) ;

int rt2x00usb_probe(struct usb_interface *usb_intf,
      const struct rt2x00_ops *ops)
{
 struct usb_device *usb_dev = interface_to_usbdev(usb_intf);
 struct ieee80211_hw *hw;
 struct rt2x00_dev *rt2x00dev;
 int retval;

 usb_dev = usb_get_dev(usb_dev);
 usb_reset_device(usb_dev);

 hw = ieee80211_alloc_hw(sizeof(struct rt2x00_dev), ops->hw);
 if (!hw) {
  rt2x00_probe_err("Failed to allocate hardware\n");
  retval = -ENOMEM;
  goto exit_put_device;
 }

 usb_set_intfdata(usb_intf, hw);

 rt2x00dev = hw->priv;
 rt2x00dev->dev = &usb_intf->dev;
 rt2x00dev->ops = ops;
 rt2x00dev->hw = hw;

 rt2x00_set_chip_intf(rt2x00dev, RT2X00_CHIP_INTF_USB);

 INIT_WORK(&rt2x00dev->rxdone_work, rt2x00usb_work_rxdone);
 INIT_WORK(&rt2x00dev->txdone_work, rt2x00usb_work_txdone);
 hrtimer_init(&rt2x00dev->txstatus_timer, CLOCK_MONOTONIC,
       HRTIMER_MODE_REL);

 retval = rt2x00usb_alloc_reg(rt2x00dev);
 if (retval)
  goto exit_free_device;

 retval = rt2x00lib_probe_dev(rt2x00dev);
 if (retval)
  goto exit_free_reg;

 return 0;

exit_free_reg:
 rt2x00usb_free_reg(rt2x00dev);

exit_free_device:
 ieee80211_free_hw(hw);

exit_put_device:
 usb_put_dev(usb_dev);

 usb_set_intfdata(usb_intf, ((void*)0));

 return retval;
}
