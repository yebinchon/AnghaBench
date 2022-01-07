
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {int usb_mutex; int udev; } ;






 int EAGAIN ;
 int EINVAL ;
 int OPERA_READ_MSG ;
 int OPERA_WRITE_MSG ;
 int info (char*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int opera1_xilinx_rw (int ,int,int,int*,int,int ) ;

__attribute__((used)) static int opera1_usb_i2c_msgxfer(struct dvb_usb_device *dev, u16 addr,
      u8 * buf, u16 len)
{
 int ret = 0;
 u8 request;
 u16 value;

 if (!dev) {
  info("no usb_device");
  return -EINVAL;
 }
 if (mutex_lock_interruptible(&dev->usb_mutex) < 0)
  return -EAGAIN;

 switch (addr>>1){
  case 130:
   request=0xb6;
   value=0x00;
   break;
  case 129:
   request=0xb6;
   value=0x01;
   break;
  case 131:
   request=0xb1;
   value=0xa6;
   break;
  case 128:
   request=0xb8;
   value=0x80;
   break;
  default:
   request=0xb1;
   value=addr;
 }
 ret = opera1_xilinx_rw(dev->udev, request,
  value, buf, len,
  addr&0x01?OPERA_READ_MSG:OPERA_WRITE_MSG);

 mutex_unlock(&dev->usb_mutex);
 return ret;
}
