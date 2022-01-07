
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;


 int info (char*) ;
 int lme2510_bulk_read (struct usb_device*,int*,int,int) ;
 int lme2510_bulk_write (struct usb_device*,int*,int,int) ;

__attribute__((used)) static void lme_coldreset(struct usb_device *dev)
{
 int ret = 0, len_in;
 u8 data[512] = {0};

 data[0] = 0x0a;
 len_in = 1;
 info("FRM Firmware Cold Reset");
 ret |= lme2510_bulk_write(dev, data , len_in, 1);
 ret |= lme2510_bulk_read(dev, data, len_in, 1);

 return;
}
