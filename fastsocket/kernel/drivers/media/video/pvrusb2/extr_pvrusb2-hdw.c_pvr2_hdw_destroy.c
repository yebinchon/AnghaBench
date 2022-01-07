
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {size_t unit_number; struct pvr2_hdw* std_enum_names; struct pvr2_hdw* std_defs; struct pvr2_hdw* mpeg_ctrl_info; struct pvr2_hdw* controls; int v4l2_dev; int * vid_stream; struct pvr2_hdw* fw_buffer; int encoder_wait_timer; int encoder_run_timer; int decoder_stabilization_timer; int quiescent_timer; int * workqueue; } ;


 int PVR2_TRACE_INIT ;
 size_t PVR_NUM ;
 int del_timer_sync (int *) ;
 int destroy_workqueue (int *) ;
 int flush_workqueue (int *) ;
 int kfree (struct pvr2_hdw*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pvr2_hdw_remove_usb_stuff (struct pvr2_hdw*) ;
 int pvr2_i2c_core_done (struct pvr2_hdw*) ;
 int pvr2_stream_destroy (int *) ;
 int pvr2_trace (int ,char*,struct pvr2_hdw*) ;
 int pvr2_unit_mtx ;
 struct pvr2_hdw** unit_pointers ;
 int v4l2_device_unregister (int *) ;

void pvr2_hdw_destroy(struct pvr2_hdw *hdw)
{
 if (!hdw) return;
 pvr2_trace(PVR2_TRACE_INIT,"pvr2_hdw_destroy: hdw=%p",hdw);
 if (hdw->workqueue) {
  flush_workqueue(hdw->workqueue);
  destroy_workqueue(hdw->workqueue);
  hdw->workqueue = ((void*)0);
 }
 del_timer_sync(&hdw->quiescent_timer);
 del_timer_sync(&hdw->decoder_stabilization_timer);
 del_timer_sync(&hdw->encoder_run_timer);
 del_timer_sync(&hdw->encoder_wait_timer);
 if (hdw->fw_buffer) {
  kfree(hdw->fw_buffer);
  hdw->fw_buffer = ((void*)0);
 }
 if (hdw->vid_stream) {
  pvr2_stream_destroy(hdw->vid_stream);
  hdw->vid_stream = ((void*)0);
 }
 pvr2_i2c_core_done(hdw);
 v4l2_device_unregister(&hdw->v4l2_dev);
 pvr2_hdw_remove_usb_stuff(hdw);
 mutex_lock(&pvr2_unit_mtx); do {
  if ((hdw->unit_number >= 0) &&
      (hdw->unit_number < PVR_NUM) &&
      (unit_pointers[hdw->unit_number] == hdw)) {
   unit_pointers[hdw->unit_number] = ((void*)0);
  }
 } while (0); mutex_unlock(&pvr2_unit_mtx);
 kfree(hdw->controls);
 kfree(hdw->mpeg_ctrl_info);
 kfree(hdw->std_defs);
 kfree(hdw->std_enum_names);
 kfree(hdw);
}
