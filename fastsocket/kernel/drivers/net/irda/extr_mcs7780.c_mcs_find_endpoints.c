
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bEndpointAddress; } ;
struct usb_host_endpoint {TYPE_1__ desc; } ;
struct mcs_cb {int ep_in; int ep_out; } ;


 int USB_DIR_IN ;

__attribute__((used)) static inline int mcs_find_endpoints(struct mcs_cb *mcs,
         struct usb_host_endpoint *ep, int epnum)
{
 int i;
 int ret = 0;


 if (!ep)
  return ret;


 for (i = 0; i < epnum; i++) {
  if (ep[i].desc.bEndpointAddress & USB_DIR_IN)
   mcs->ep_in = ep[i].desc.bEndpointAddress;
  else
   mcs->ep_out = ep[i].desc.bEndpointAddress;




  if ((mcs->ep_in != 0) && (mcs->ep_out != 0)) {
   ret = 1;
   break;
  }
 }

 return ret;
}
