
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef void* u16 ;
struct cx231xx {int dummy; } ;
struct VENDOR_REQUEST_IN {int direction; scalar_t__ wLength; scalar_t__* pBuff; scalar_t__ bData; void* wIndex; int bRequest; void* wValue; } ;


 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int VRT_GET_GPIE ;
 int VRT_GET_GPIO ;
 int VRT_SET_GPIE ;
 int VRT_SET_GPIO ;
 int cx231xx_info (char*,int) ;
 int cx231xx_send_vendor_cmd (struct cx231xx*,struct VENDOR_REQUEST_IN*) ;
 int memset (scalar_t__*,int,scalar_t__) ;

int cx231xx_send_gpio_cmd(struct cx231xx *dev, u32 gpio_bit, u8 *gpio_val,
     u8 len, u8 request, u8 direction)
{
 int status = 0;
 struct VENDOR_REQUEST_IN ven_req;


 ven_req.wValue = (u16) (gpio_bit >> 16 & 0xffff);


 if (!request) {
  if (direction)
   ven_req.bRequest = VRT_GET_GPIO;
  else
   ven_req.bRequest = VRT_SET_GPIO;
 } else {
  if (direction)
   ven_req.bRequest = VRT_GET_GPIE;
  else
   ven_req.bRequest = VRT_SET_GPIE;
 }


 ven_req.wIndex = (u16) (gpio_bit & 0xffff);


 ven_req.wLength = len;


 ven_req.bData = 0;


 ven_req.pBuff = gpio_val;


 if (direction) {
  ven_req.direction = USB_DIR_IN;
  memset(ven_req.pBuff, 0x00, ven_req.wLength);
 } else
  ven_req.direction = USB_DIR_OUT;



 status = cx231xx_send_vendor_cmd(dev, &ven_req);
 if (status < 0) {
  cx231xx_info
      ("UsbInterface::sendCommand, failed with status -%d\n",
       status);
 }

 return status;
}
