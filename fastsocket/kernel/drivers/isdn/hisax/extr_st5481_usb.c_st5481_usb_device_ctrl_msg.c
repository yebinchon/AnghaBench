
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct st5481_adapter {int dummy; } ;
typedef int ctrl_complete_t ;


 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_ctrl_msg (struct st5481_adapter*,int ,int,int ,int ,int ,void*) ;

void st5481_usb_device_ctrl_msg(struct st5481_adapter *adapter,
    u8 request, u16 value,
    ctrl_complete_t complete, void *context)
{
 usb_ctrl_msg(adapter, request,
       USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
       value, 0, complete, context);
}
