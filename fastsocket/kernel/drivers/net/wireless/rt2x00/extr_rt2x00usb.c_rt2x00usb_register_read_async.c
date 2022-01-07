
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usb_device {int dummy; } ;
struct urb {int dummy; } ;
struct rt2x00_dev {int dev; } ;
struct TYPE_2__ {void* wLength; void* wIndex; scalar_t__ wValue; int bRequest; int bRequestType; } ;
struct rt2x00_async_read_data {int (* callback ) (struct rt2x00_dev*,int,u32) ;int reg; TYPE_1__ cr; struct rt2x00_dev* rt2x00dev; } ;


 int GFP_ATOMIC ;
 int USB_MULTI_READ ;
 int USB_VENDOR_REQUEST_IN ;
 void* cpu_to_le16 (unsigned int const) ;
 int kfree (struct rt2x00_async_read_data*) ;
 struct rt2x00_async_read_data* kmalloc (int,int ) ;
 int rt2x00usb_register_read_async_cb ;
 struct usb_device* to_usb_device_intf (int ) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_control_urb (struct urb*,struct usb_device*,int ,unsigned char*,int *,int,int ,struct rt2x00_async_read_data*) ;
 int usb_free_urb (struct urb*) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;
 scalar_t__ usb_submit_urb (struct urb*,int ) ;

void rt2x00usb_register_read_async(struct rt2x00_dev *rt2x00dev,
       const unsigned int offset,
       bool (*callback)(struct rt2x00_dev*, int, u32))
{
 struct usb_device *usb_dev = to_usb_device_intf(rt2x00dev->dev);
 struct urb *urb;
 struct rt2x00_async_read_data *rd;

 rd = kmalloc(sizeof(*rd), GFP_ATOMIC);
 if (!rd)
  return;

 urb = usb_alloc_urb(0, GFP_ATOMIC);
 if (!urb) {
  kfree(rd);
  return;
 }

 rd->rt2x00dev = rt2x00dev;
 rd->callback = callback;
 rd->cr.bRequestType = USB_VENDOR_REQUEST_IN;
 rd->cr.bRequest = USB_MULTI_READ;
 rd->cr.wValue = 0;
 rd->cr.wIndex = cpu_to_le16(offset);
 rd->cr.wLength = cpu_to_le16(sizeof(u32));

 usb_fill_control_urb(urb, usb_dev, usb_rcvctrlpipe(usb_dev, 0),
        (unsigned char *)(&rd->cr), &rd->reg, sizeof(rd->reg),
        rt2x00usb_register_read_async_cb, rd);
 if (usb_submit_urb(urb, GFP_ATOMIC) < 0)
  kfree(rd);
 usb_free_urb(urb);
}
