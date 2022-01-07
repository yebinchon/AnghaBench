
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_adapter {int dev; } ;


 int DIBUSB_IOCTL_CMD_DISABLE_STREAM ;
 int DIBUSB_IOCTL_CMD_ENABLE_STREAM ;
 int DIBUSB_REQ_SET_IOCTL ;
 int DIBUSB_REQ_SET_STREAMING_MODE ;
 int dibusb_streaming_ctrl (struct dvb_usb_adapter*,int) ;
 int dvb_usb_generic_write (int ,int*,int) ;

int dibusb2_0_streaming_ctrl(struct dvb_usb_adapter *adap, int onoff)
{
 u8 b[3] = { 0 };
 int ret;

 if ((ret = dibusb_streaming_ctrl(adap,onoff)) < 0)
  return ret;

 if (onoff) {
  b[0] = DIBUSB_REQ_SET_STREAMING_MODE;
  b[1] = 0x00;
  if ((ret = dvb_usb_generic_write(adap->dev,b,2)) < 0)
   return ret;
 }

 b[0] = DIBUSB_REQ_SET_IOCTL;
 b[1] = onoff ? DIBUSB_IOCTL_CMD_ENABLE_STREAM : DIBUSB_IOCTL_CMD_DISABLE_STREAM;
 return dvb_usb_generic_write(adap->dev,b,3);
}
