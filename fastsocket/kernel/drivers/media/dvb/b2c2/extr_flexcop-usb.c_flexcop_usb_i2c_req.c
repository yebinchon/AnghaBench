
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct flexcop_usb {int udev; } ;
struct flexcop_i2c_adapter {int port; TYPE_1__* fc; } ;
typedef int flexcop_usb_request_t ;
typedef int flexcop_usb_i2c_function_t ;
struct TYPE_2__ {struct flexcop_usb* bus_specific; } ;


 int B2C2_USB_CTRL_PIPE_IN ;
 int B2C2_USB_CTRL_PIPE_OUT ;
 int EINVAL ;
 int EREMOTEIO ;
 int HZ ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;






 int USB_TYPE_VENDOR ;
 int deb_i2c (char*,int,int,int ,int,int,int,int) ;
 int deb_info (char*,int) ;
 int usb_control_msg (int ,int,int ,int,int,int,int*,int,int) ;

__attribute__((used)) static int flexcop_usb_i2c_req(struct flexcop_i2c_adapter *i2c,
  flexcop_usb_request_t req, flexcop_usb_i2c_function_t func,
  u8 chipaddr, u8 addr, u8 *buf, u8 buflen)
{
 struct flexcop_usb *fc_usb = i2c->fc->bus_specific;
 u16 wValue, wIndex;
 int nWaitTime,pipe,len;
 u8 request_type = USB_TYPE_VENDOR;

 switch (func) {
 case 128:
 case 132:
 case 129:

 case 133:
  pipe = B2C2_USB_CTRL_PIPE_OUT;
  nWaitTime = 2;
  request_type |= USB_DIR_OUT;
  break;
 case 131:
 case 130:
  pipe = B2C2_USB_CTRL_PIPE_IN;
  nWaitTime = 2;
  request_type |= USB_DIR_IN;
  break;
 default:
  deb_info("unsupported function for i2c_req %x\n", func);
  return -EINVAL;
 }
 wValue = (func << 8) | (i2c->port << 4);
 wIndex = (chipaddr << 8 ) | addr;

 deb_i2c("i2c %2d: %02x %02x %02x %02x %02x %02x\n",
   func, request_type, req,
   wValue & 0xff, wValue >> 8,
   wIndex & 0xff, wIndex >> 8);

 len = usb_control_msg(fc_usb->udev,pipe,
   req,
   request_type,
   wValue,
   wIndex,
   buf,
   buflen,
   nWaitTime * HZ);
 return len == buflen ? 0 : -EREMOTEIO;
}
