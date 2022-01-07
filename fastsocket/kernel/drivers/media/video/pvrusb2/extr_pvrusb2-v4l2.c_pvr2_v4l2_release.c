
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* mc_head; } ;
struct pvr2_v4l2_fh {struct pvr2_v4l2_fh* input_map; TYPE_6__ channel; struct pvr2_v4l2* vhead; TYPE_2__* vprev; TYPE_5__* vnext; int prio; int * rhp; } ;
struct TYPE_10__ {TYPE_3__* mc_head; } ;
struct pvr2_v4l2 {TYPE_5__* vfirst; TYPE_4__ channel; TYPE_2__* vlast; int prio; } ;
struct pvr2_stream {int dummy; } ;
struct pvr2_hdw {int dummy; } ;
struct file {struct pvr2_v4l2_fh* private_data; } ;
struct TYPE_11__ {TYPE_2__* vprev; } ;
struct TYPE_9__ {scalar_t__ disconnect_flag; } ;
struct TYPE_8__ {TYPE_5__* vnext; } ;
struct TYPE_7__ {struct pvr2_hdw* hdw; } ;


 int PVR2_TRACE_OPEN_CLOSE ;
 int PVR2_TRACE_STRUCT ;
 int kfree (struct pvr2_v4l2_fh*) ;
 int pvr2_channel_done (TYPE_6__*) ;
 int pvr2_hdw_set_streaming (struct pvr2_hdw*,int ) ;
 int pvr2_ioread_destroy (int *) ;
 struct pvr2_stream* pvr2_ioread_get_stream (int *) ;
 int pvr2_stream_set_callback (struct pvr2_stream*,int *,int *) ;
 int pvr2_trace (int ,char*,...) ;
 int pvr2_v4l2_destroy_no_lock (struct pvr2_v4l2*) ;
 int v4l2_prio_close (int *,int ) ;

__attribute__((used)) static int pvr2_v4l2_release(struct file *file)
{
 struct pvr2_v4l2_fh *fhp = file->private_data;
 struct pvr2_v4l2 *vp = fhp->vhead;
 struct pvr2_hdw *hdw = fhp->channel.mc_head->hdw;

 pvr2_trace(PVR2_TRACE_OPEN_CLOSE,"pvr2_v4l2_release");

 if (fhp->rhp) {
  struct pvr2_stream *sp;
  pvr2_hdw_set_streaming(hdw,0);
  sp = pvr2_ioread_get_stream(fhp->rhp);
  if (sp) pvr2_stream_set_callback(sp,((void*)0),((void*)0));
  pvr2_ioread_destroy(fhp->rhp);
  fhp->rhp = ((void*)0);
 }

 v4l2_prio_close(&vp->prio, fhp->prio);
 file->private_data = ((void*)0);

 if (fhp->vnext) {
  fhp->vnext->vprev = fhp->vprev;
 } else {
  vp->vlast = fhp->vprev;
 }
 if (fhp->vprev) {
  fhp->vprev->vnext = fhp->vnext;
 } else {
  vp->vfirst = fhp->vnext;
 }
 fhp->vnext = ((void*)0);
 fhp->vprev = ((void*)0);
 fhp->vhead = ((void*)0);
 pvr2_channel_done(&fhp->channel);
 pvr2_trace(PVR2_TRACE_STRUCT,
     "Destroying pvr_v4l2_fh id=%p",fhp);
 if (fhp->input_map) {
  kfree(fhp->input_map);
  fhp->input_map = ((void*)0);
 }
 kfree(fhp);
 if (vp->channel.mc_head->disconnect_flag && !vp->vfirst) {
  pvr2_v4l2_destroy_no_lock(vp);
 }
 return 0;
}
