
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;
struct usb_cpia {struct usb_device* dev; } ;


 int DATA_IN ;
 int DATA_OUT ;
 int DBG (char*,...) ;
 int EINVAL ;
 int ReadPacket (struct usb_device*,int*,int*,int) ;
 int WritePacket (struct usb_device*,int*,int*,int) ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static int cpia_usb_transferCmd(void *privdata, u8 *command, u8 *data)
{
 int err = 0;
 int databytes;
 struct usb_cpia *ucpia = (struct usb_cpia *)privdata;
 struct usb_device *udev = ucpia->dev;

 if (!udev) {
  DBG("Internal driver error: udev is NULL\n");
  return -EINVAL;
 }

 if (!command) {
  DBG("Internal driver error: command is NULL\n");
  return -EINVAL;
 }

 databytes = (((int)command[7])<<8) | command[6];

 if (command[0] == DATA_IN) {
  u8 buffer[8];

  if (!data) {
   DBG("Internal driver error: data is NULL\n");
   return -EINVAL;
  }

  err = ReadPacket(udev, command, buffer, 8);
  if (err < 0)
   return err;

  memcpy(data, buffer, databytes);
 } else if(command[0] == DATA_OUT)
  WritePacket(udev, command, data, databytes);
 else {
  DBG("Unexpected first byte of command: %x\n", command[0]);
  err = -EINVAL;
 }

 return 0;
}
