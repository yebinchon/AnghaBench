
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;


 int usb_bulk_msg (struct usb_device*,int ,int *,int,int*,int) ;
 int usb_sndbulkpipe (struct usb_device*,int ) ;

__attribute__((used)) static int lme2510_bulk_write(struct usb_device *dev,
    u8 *snd, int len, u8 pipe)
{
 int ret, actual_l;

 ret = usb_bulk_msg(dev, usb_sndbulkpipe(dev, pipe),
    snd, len , &actual_l, 100);
 return ret;
}
