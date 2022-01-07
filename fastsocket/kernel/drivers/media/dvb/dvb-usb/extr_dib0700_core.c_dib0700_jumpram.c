
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct usb_device {int dummy; } ;


 int EIO ;
 int REQUEST_JUMPRAM ;
 int deb_fw (char*,int) ;
 int usb_bulk_msg (struct usb_device*,int ,int*,int,int*,int) ;
 int usb_sndbulkpipe (struct usb_device*,int) ;

__attribute__((used)) static int dib0700_jumpram(struct usb_device *udev, u32 address)
{
 int ret, actlen;
 u8 buf[8] = { REQUEST_JUMPRAM, 0, 0, 0,
  (address >> 24) & 0xff,
  (address >> 16) & 0xff,
  (address >> 8) & 0xff,
   address & 0xff };

 if ((ret = usb_bulk_msg(udev, usb_sndbulkpipe(udev, 0x01),buf,8,&actlen,1000)) < 0) {
  deb_fw("jumpram to 0x%x failed\n",address);
  return ret;
 }
 if (actlen != 8) {
  deb_fw("jumpram to 0x%x failed\n",address);
  return -EIO;
 }
 return 0;
}
