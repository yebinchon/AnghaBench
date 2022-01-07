
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int intf; } ;


 int ENODEV ;
 int __usbnet_read_cmd (struct usbnet*,int ,int ,int ,int ,void*,int ) ;
 scalar_t__ usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;

int usbnet_read_cmd(struct usbnet *dev, u8 cmd, u8 reqtype,
      u16 value, u16 index, void *data, u16 size)
{
 int ret;

 if (usb_autopm_get_interface(dev->intf) < 0)
  return -ENODEV;
 ret = __usbnet_read_cmd(dev, cmd, reqtype, value, index,
    data, size);
 usb_autopm_put_interface(dev->intf);
 return ret;
}
