
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct flexcop_usb {int udev; } ;
typedef int flexcop_usb_request_t ;


 int B2C2_USB_CTRL_PIPE_IN ;
 int B2C2_USB_CTRL_PIPE_OUT ;



 int B2C2_WAIT_FOR_OPERATION_V8FLASH ;
 int B2C2_WAIT_FOR_OPERATION_V8READ ;
 int B2C2_WAIT_FOR_OPERATION_V8WRITE ;
 int EINVAL ;
 int EIO ;
 int HZ ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 int deb_info (char*,int ) ;
 int deb_v8 (char*,int,int ,int,int,int) ;
 int debug_dump (int*,int,int (*) (char*,int,int ,int,int,int)) ;
 int usb_control_msg (int ,int,int ,int,int,int,int*,int,int) ;

__attribute__((used)) static int flexcop_usb_v8_memory_req(struct flexcop_usb *fc_usb,
  flexcop_usb_request_t req, u8 page, u16 wAddress,
  u8 *pbBuffer, u32 buflen)
{
 u8 request_type = USB_TYPE_VENDOR;
 u16 wIndex;
 int nWaitTime, pipe, len;
 wIndex = page << 8;

 switch (req) {
 case 129:
  nWaitTime = B2C2_WAIT_FOR_OPERATION_V8READ;
  request_type |= USB_DIR_IN;
  pipe = B2C2_USB_CTRL_PIPE_IN;
  break;
 case 128:
  wIndex |= pbBuffer[0];
  request_type |= USB_DIR_OUT;
  nWaitTime = B2C2_WAIT_FOR_OPERATION_V8WRITE;
  pipe = B2C2_USB_CTRL_PIPE_OUT;
  break;
 case 130:
  request_type |= USB_DIR_OUT;
  nWaitTime = B2C2_WAIT_FOR_OPERATION_V8FLASH;
  pipe = B2C2_USB_CTRL_PIPE_OUT;
  break;
 default:
  deb_info("unsupported request for v8_mem_req %x.\n", req);
  return -EINVAL;
 }
 deb_v8("v8mem: %02x %02x %04x %04x, len: %d\n", request_type, req,
   wAddress, wIndex, buflen);

 len = usb_control_msg(fc_usb->udev, pipe,
   req,
   request_type,
   wAddress,
   wIndex,
   pbBuffer,
   buflen,
   nWaitTime * HZ);

 debug_dump(pbBuffer, len, deb_v8);
 return len == buflen ? 0 : -EIO;
}
