
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct usb_interface {int cur_altsetting; } ;


 int ENODEV ;
 int cdc_ncm_bind_common (struct usbnet*,struct usb_interface*,int) ;
 scalar_t__ cdc_ncm_comm_intf_is_mbim (int ) ;
 int cdc_ncm_select_altsetting (struct usbnet*,struct usb_interface*) ;
 int usbnet_link_change (struct usbnet*,int ,int ) ;

__attribute__((used)) static int cdc_ncm_bind(struct usbnet *dev, struct usb_interface *intf)
{
 int ret;


 cdc_ncm_select_altsetting(dev, intf);
 if (cdc_ncm_comm_intf_is_mbim(intf->cur_altsetting))
  return -ENODEV;


 ret = cdc_ncm_bind_common(dev, intf, 1);







 usbnet_link_change(dev, 0, 0);
 return ret;
}
