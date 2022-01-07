
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct usb_device {int dummy; } ;
struct sn9c102_device {size_t* control_buffer; size_t* reg; struct usb_device* usbdev; } ;


 int DBG (int,char*,size_t,size_t,int) ;
 int SN9C102_CTRL_TIMEOUT ;
 int usb_control_msg (struct usb_device*,int ,int,int,size_t,int ,size_t*,int,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

int sn9c102_write_regs(struct sn9c102_device* cam, const u8 valreg[][2],
         int count)
{
 struct usb_device* udev = cam->usbdev;
 u8* buff = cam->control_buffer;
 int i, res;

 for (i = 0; i < count; i++) {
  u8 index = valreg[i][1];
  *buff = valreg[i][0];

  res = usb_control_msg(udev, usb_sndctrlpipe(udev, 0), 0x08,
          0x41, index, 0, buff, 1,
          SN9C102_CTRL_TIMEOUT);

  if (res < 0) {
   DBG(3, "Failed to write a register (value 0x%02X, "
          "index 0x%02X, error %d)", *buff, index, res);
   return -1;
  }

  cam->reg[index] = *buff;
 }

 return 0;
}
