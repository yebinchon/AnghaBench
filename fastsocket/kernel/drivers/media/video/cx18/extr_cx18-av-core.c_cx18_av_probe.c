
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int grp_id; int name; } ;
struct cx18_av_state {int rev; int audclk_freq; struct v4l2_subdev sd; scalar_t__ slicer_line_delay; scalar_t__ slicer_line_offset; int audmode; int aud_input; int vid_input; int id; } ;
struct TYPE_2__ {char* name; } ;
struct cx18 {TYPE_1__ v4l2_dev; struct cx18_av_state av_state; } ;


 int CX18_AV_AUDIO8 ;
 int CX18_AV_COMPOSITE7 ;
 int CX18_HW_418_AV ;
 int CXADEC_CHIP_CTRL ;
 int CXADEC_CHIP_TYPE_MAKO ;
 int V4L2_IDENT_CX23418_843 ;
 int V4L2_IDENT_UNKNOWN ;
 int V4L2_TUNER_MODE_LANG1 ;
 int cx18_av_init (struct cx18*) ;
 int cx18_av_ops ;
 int cx18_av_read4 (struct cx18*,int ) ;
 int snprintf (int ,int,char*,char*,int) ;
 int v4l2_device_register_subdev (TYPE_1__*,struct v4l2_subdev*) ;
 int v4l2_set_subdevdata (struct v4l2_subdev*,struct cx18*) ;
 int v4l2_subdev_init (struct v4l2_subdev*,int *) ;

int cx18_av_probe(struct cx18 *cx)
{
 struct cx18_av_state *state = &cx->av_state;
 struct v4l2_subdev *sd;
 int err;

 state->rev = cx18_av_read4(cx, CXADEC_CHIP_CTRL) & 0xffff;
 state->id = ((state->rev >> 4) == CXADEC_CHIP_TYPE_MAKO)
      ? V4L2_IDENT_CX23418_843 : V4L2_IDENT_UNKNOWN;

 state->vid_input = CX18_AV_COMPOSITE7;
 state->aud_input = CX18_AV_AUDIO8;
 state->audclk_freq = 48000;
 state->audmode = V4L2_TUNER_MODE_LANG1;
 state->slicer_line_delay = 0;
 state->slicer_line_offset = (10 + state->slicer_line_delay - 2);

 sd = &state->sd;
 v4l2_subdev_init(sd, &cx18_av_ops);
 v4l2_set_subdevdata(sd, cx);
 snprintf(sd->name, sizeof(sd->name),
   "%s %03x", cx->v4l2_dev.name, (state->rev >> 4));
 sd->grp_id = CX18_HW_418_AV;
 err = v4l2_device_register_subdev(&cx->v4l2_dev, sd);
 if (!err)
  cx18_av_init(cx);
 return err;
}
