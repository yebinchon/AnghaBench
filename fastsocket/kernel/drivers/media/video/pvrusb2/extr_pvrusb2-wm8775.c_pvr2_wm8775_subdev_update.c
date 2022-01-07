
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev {TYPE_2__* ops; } ;
struct pvr2_hdw {int input_val; scalar_t__ force_dirty; scalar_t__ input_dirty; } ;
struct TYPE_4__ {TYPE_1__* audio; } ;
struct TYPE_3__ {int (* s_routing ) (struct v4l2_subdev*,int,int ,int ) ;} ;



 int PVR2_TRACE_CHIPS ;
 int pvr2_trace (int ,char*,int,int) ;
 int stub1 (struct v4l2_subdev*,int,int ,int ) ;

void pvr2_wm8775_subdev_update(struct pvr2_hdw *hdw, struct v4l2_subdev *sd)
{
 if (hdw->input_dirty || hdw->force_dirty) {
  u32 input;

  switch (hdw->input_val) {
  case 128:
   input = 1;
   break;
  default:

   input = 2;
   break;
  }
  pvr2_trace(PVR2_TRACE_CHIPS, "subdev wm8775"
      " set_input(val=%d route=0x%x)",
      hdw->input_val, input);

  sd->ops->audio->s_routing(sd, input, 0, 0);
 }
}
