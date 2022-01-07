
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct st5481_adapter {int dummy; } ;
typedef int ctrl_complete_t ;


 int DBG (int,char*,int ) ;
 int USB_DIR_OUT ;
 int USB_RECIP_ENDPOINT ;
 int USB_REQ_CLEAR_FEATURE ;
 int usb_ctrl_msg (struct st5481_adapter*,int ,int,int ,int ,int ,void*) ;

void st5481_usb_pipe_reset(struct st5481_adapter *adapter,
      u_char pipe,
      ctrl_complete_t complete, void *context)
{
 DBG(1,"pipe=%02x",pipe);

 usb_ctrl_msg(adapter,
       USB_REQ_CLEAR_FEATURE, USB_DIR_OUT | USB_RECIP_ENDPOINT,
       0, pipe, complete, context);
}
