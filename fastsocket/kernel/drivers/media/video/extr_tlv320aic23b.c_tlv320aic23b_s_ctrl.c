
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_control {scalar_t__ id; int value; } ;
struct tlv320aic23b_state {int muted; } ;


 int EINVAL ;
 scalar_t__ V4L2_CID_AUDIO_MUTE ;
 int tlv320aic23b_write (struct v4l2_subdev*,int ,int) ;
 struct tlv320aic23b_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int tlv320aic23b_s_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 struct tlv320aic23b_state *state = to_state(sd);

 if (ctrl->id != V4L2_CID_AUDIO_MUTE)
  return -EINVAL;
 state->muted = ctrl->value;
 tlv320aic23b_write(sd, 0, 0x180);

 if (!state->muted)
  tlv320aic23b_write(sd, 0, 0x119);
 return 0;
}
