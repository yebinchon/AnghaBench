
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u16 ;
struct usb_device {int dummy; } ;
struct sn9c102_device {int * reg; int * control_buffer; struct usb_device* usbdev; } ;


 size_t ARRAY_SIZE (int *) ;
 int DBG (int,char*,int ,size_t,int) ;
 int SN9C102_CTRL_TIMEOUT ;
 int usb_control_msg (struct usb_device*,int ,int,int,size_t,int ,int *,int,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

int sn9c102_write_reg(struct sn9c102_device* cam, u8 value, u16 index)
{
 struct usb_device* udev = cam->usbdev;
 u8* buff = cam->control_buffer;
 int res;

 if (index >= ARRAY_SIZE(cam->reg))
  return -1;

 *buff = value;

 res = usb_control_msg(udev, usb_sndctrlpipe(udev, 0), 0x08, 0x41,
         index, 0, buff, 1, SN9C102_CTRL_TIMEOUT);
 if (res < 0) {
  DBG(3, "Failed to write a register (value 0x%02X, index "
         "0x%02X, error %d)", value, index, res);
  return -1;
 }

 cam->reg[index] = value;

 return 0;
}
