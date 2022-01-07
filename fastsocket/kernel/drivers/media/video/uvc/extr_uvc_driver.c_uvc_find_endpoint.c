
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int bNumEndpoints; } ;
struct usb_host_interface {struct usb_host_endpoint* endpoint; TYPE_1__ desc; } ;
struct TYPE_4__ {scalar_t__ bEndpointAddress; } ;
struct usb_host_endpoint {TYPE_2__ desc; } ;
typedef scalar_t__ __u8 ;



struct usb_host_endpoint *uvc_find_endpoint(struct usb_host_interface *alts,
  __u8 epaddr)
{
 struct usb_host_endpoint *ep;
 unsigned int i;

 for (i = 0; i < alts->desc.bNumEndpoints; ++i) {
  ep = &alts->endpoint[i];
  if (ep->desc.bEndpointAddress == epaddr)
   return ep;
 }

 return ((void*)0);
}
