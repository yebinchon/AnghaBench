
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int usb_dev; } ;


 int PVR2_TRACE_ERROR_LEGS ;
 int PVR2_TRACE_INFO ;
 int PVR2_TRACE_INIT ;
 int init_pause_msec ;
 int msleep (int) ;
 int pvr2_trace (int ,char*,...) ;
 int usb_lock_device_for_reset (int ,int *) ;
 int usb_reset_device (int ) ;
 int usb_unlock_device (int ) ;

void pvr2_hdw_device_reset(struct pvr2_hdw *hdw)
{
 int ret;
 pvr2_trace(PVR2_TRACE_INIT,"Performing a device reset...");
 ret = usb_lock_device_for_reset(hdw->usb_dev,((void*)0));
 if (ret == 0) {
  ret = usb_reset_device(hdw->usb_dev);
  usb_unlock_device(hdw->usb_dev);
 } else {
  pvr2_trace(PVR2_TRACE_ERROR_LEGS,
      "Failed to lock USB device ret=%d",ret);
 }
 if (init_pause_msec) {
  pvr2_trace(PVR2_TRACE_INFO,
      "Waiting %u msec for hardware to settle",
      init_pause_msec);
  msleep(init_pause_msec);
 }

}
