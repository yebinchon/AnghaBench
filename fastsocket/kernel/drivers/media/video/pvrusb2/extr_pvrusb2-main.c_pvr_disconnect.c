
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct pvr2_context {int dummy; } ;


 int PVR2_TRACE_INIT ;
 int pvr2_context_disconnect (struct pvr2_context*) ;
 int pvr2_trace (int ,char*,struct pvr2_context*) ;
 struct pvr2_context* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void pvr_disconnect(struct usb_interface *intf)
{
 struct pvr2_context *pvr = usb_get_intfdata(intf);

 pvr2_trace(PVR2_TRACE_INIT,"pvr_disconnect(pvr=%p) BEGIN",pvr);

 usb_set_intfdata (intf, ((void*)0));
 pvr2_context_disconnect(pvr);

 pvr2_trace(PVR2_TRACE_INIT,"pvr_disconnect(pvr=%p) DONE",pvr);

}
