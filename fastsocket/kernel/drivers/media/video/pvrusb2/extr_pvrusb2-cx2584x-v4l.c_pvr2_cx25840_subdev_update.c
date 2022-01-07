
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev {TYPE_5__* ops; } ;
struct routing_scheme {int cnt; TYPE_2__* def; } ;
struct pvr2_hdw {int input_val; TYPE_1__* hdw_desc; scalar_t__ force_dirty; scalar_t__ input_dirty; } ;
typedef enum cx25840_video_input { ____Placeholder_cx25840_video_input } cx25840_video_input ;
typedef enum cx25840_audio_input { ____Placeholder_cx25840_audio_input } cx25840_audio_input ;
struct TYPE_10__ {TYPE_4__* audio; TYPE_3__* video; } ;
struct TYPE_9__ {int (* s_routing ) (struct v4l2_subdev*,int ,int ,int ) ;} ;
struct TYPE_8__ {int (* s_routing ) (struct v4l2_subdev*,int ,int ,int ) ;} ;
struct TYPE_7__ {int vid; int aud; } ;
struct TYPE_6__ {unsigned int signal_routing_scheme; } ;


 unsigned int ARRAY_SIZE (struct routing_scheme**) ;
 int PVR2_TRACE_CHIPS ;
 int PVR2_TRACE_ERROR_LEGS ;
 int pvr2_trace (int ,char*,...) ;
 struct routing_scheme** routing_schemes ;
 int stub1 (struct v4l2_subdev*,int ,int ,int ) ;
 int stub2 (struct v4l2_subdev*,int ,int ,int ) ;

void pvr2_cx25840_subdev_update(struct pvr2_hdw *hdw, struct v4l2_subdev *sd)
{
 pvr2_trace(PVR2_TRACE_CHIPS, "subdev cx2584x update...");
 if (hdw->input_dirty || hdw->force_dirty) {
  enum cx25840_video_input vid_input;
  enum cx25840_audio_input aud_input;
  const struct routing_scheme *sp;
  unsigned int sid = hdw->hdw_desc->signal_routing_scheme;

  sp = (sid < ARRAY_SIZE(routing_schemes)) ?
   routing_schemes[sid] : ((void*)0);
  if ((sp == ((void*)0)) ||
      (hdw->input_val < 0) ||
      (hdw->input_val >= sp->cnt)) {
   pvr2_trace(PVR2_TRACE_ERROR_LEGS,
       "*** WARNING *** subdev cx2584x set_input:"
       " Invalid routing scheme (%u)"
       " and/or input (%d)",
       sid, hdw->input_val);
   return;
  }
  vid_input = sp->def[hdw->input_val].vid;
  aud_input = sp->def[hdw->input_val].aud;
  pvr2_trace(PVR2_TRACE_CHIPS,
      "subdev cx2584x set_input vid=0x%x aud=0x%x",
      vid_input, aud_input);
  sd->ops->video->s_routing(sd, (u32)vid_input, 0, 0);
  sd->ops->audio->s_routing(sd, (u32)aud_input, 0, 0);
 }
}
