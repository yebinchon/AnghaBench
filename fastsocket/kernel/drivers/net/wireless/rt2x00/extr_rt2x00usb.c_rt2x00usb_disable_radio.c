
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;


 int REGISTER_TIMEOUT ;
 int USB_RX_CONTROL ;
 int rt2x00usb_vendor_request_sw (struct rt2x00_dev*,int ,int ,int ,int ) ;

void rt2x00usb_disable_radio(struct rt2x00_dev *rt2x00dev)
{
 rt2x00usb_vendor_request_sw(rt2x00dev, USB_RX_CONTROL, 0, 0,
        REGISTER_TIMEOUT);
}
