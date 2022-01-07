
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct usb_interface {TYPE_2__* cur_altsetting; } ;
struct TYPE_6__ {int bmAttributes; } ;
struct usb_host_endpoint {TYPE_3__ desc; } ;
struct cdc_ncm_ctx {struct usb_host_endpoint* out_ep; struct usb_host_endpoint* in_ep; struct usb_host_endpoint* status_ep; } ;
struct TYPE_4__ {scalar_t__ bNumEndpoints; } ;
struct TYPE_5__ {struct usb_host_endpoint* endpoint; TYPE_1__ desc; } ;


 int USB_ENDPOINT_XFERTYPE_MASK ;


 int usb_endpoint_dir_in (TYPE_3__*) ;

__attribute__((used)) static void
cdc_ncm_find_endpoints(struct cdc_ncm_ctx *ctx, struct usb_interface *intf)
{
 struct usb_host_endpoint *e;
 u8 ep;

 for (ep = 0; ep < intf->cur_altsetting->desc.bNumEndpoints; ep++) {

  e = intf->cur_altsetting->endpoint + ep;
  switch (e->desc.bmAttributes & USB_ENDPOINT_XFERTYPE_MASK) {
  case 128:
   if (usb_endpoint_dir_in(&e->desc)) {
    if (ctx->status_ep == ((void*)0))
     ctx->status_ep = e;
   }
   break;

  case 129:
   if (usb_endpoint_dir_in(&e->desc)) {
    if (ctx->in_ep == ((void*)0))
     ctx->in_ep = e;
   } else {
    if (ctx->out_ep == ((void*)0))
     ctx->out_ep = e;
   }
   break;

  default:
   break;
  }
 }
}
