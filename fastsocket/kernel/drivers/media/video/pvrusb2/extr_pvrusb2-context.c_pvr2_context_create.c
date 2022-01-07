
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct pvr2_context {void (* setup_func ) (struct pvr2_context*) ;int hdw; struct pvr2_context* exist_next; struct pvr2_context* exist_prev; int mutex; } ;


 int GFP_KERNEL ;
 int PVR2_TRACE_CTXT ;
 struct pvr2_context* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pvr2_context_destroy (struct pvr2_context*) ;
 struct pvr2_context* pvr2_context_exist_first ;
 struct pvr2_context* pvr2_context_exist_last ;
 int pvr2_context_mutex ;
 int pvr2_context_set_notify (struct pvr2_context*,int) ;
 int pvr2_hdw_create (struct usb_interface*,struct usb_device_id const*) ;
 int pvr2_trace (int ,char*,struct pvr2_context*) ;

struct pvr2_context *pvr2_context_create(
 struct usb_interface *intf,
 const struct usb_device_id *devid,
 void (*setup_func)(struct pvr2_context *))
{
 struct pvr2_context *mp = ((void*)0);
 mp = kzalloc(sizeof(*mp),GFP_KERNEL);
 if (!mp) goto done;
 pvr2_trace(PVR2_TRACE_CTXT,"pvr2_context %p (create)",mp);
 mp->setup_func = setup_func;
 mutex_init(&mp->mutex);
 mutex_lock(&pvr2_context_mutex);
 mp->exist_prev = pvr2_context_exist_last;
 mp->exist_next = ((void*)0);
 pvr2_context_exist_last = mp;
 if (mp->exist_prev) {
  mp->exist_prev->exist_next = mp;
 } else {
  pvr2_context_exist_first = mp;
 }
 mutex_unlock(&pvr2_context_mutex);
 mp->hdw = pvr2_hdw_create(intf,devid);
 if (!mp->hdw) {
  pvr2_context_destroy(mp);
  mp = ((void*)0);
  goto done;
 }
 pvr2_context_set_notify(mp, !0);
 done:
 return mp;
}
