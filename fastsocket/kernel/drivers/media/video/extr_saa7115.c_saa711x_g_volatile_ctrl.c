
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; } ;
struct saa711x_state {TYPE_4__* gain; TYPE_2__* agc; } ;
struct TYPE_7__ {int val; } ;
struct TYPE_8__ {TYPE_3__ cur; } ;
struct TYPE_5__ {int val; } ;
struct TYPE_6__ {TYPE_1__ cur; } ;


 int R_0F_CHROMA_GAIN_CNTL ;

 int saa711x_read (struct v4l2_subdev*,int ) ;
 struct v4l2_subdev* to_sd (struct v4l2_ctrl*) ;
 struct saa711x_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int saa711x_g_volatile_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = to_sd(ctrl);
 struct saa711x_state *state = to_state(sd);

 switch (ctrl->id) {
 case 128:

  if (state->agc->cur.val)
   state->gain->cur.val =
    saa711x_read(sd, R_0F_CHROMA_GAIN_CNTL) & 0x7f;
  break;
 }
 return 0;
}
