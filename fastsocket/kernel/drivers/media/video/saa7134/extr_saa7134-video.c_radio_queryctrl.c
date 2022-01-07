
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {scalar_t__ id; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_CID_AUDIO_MUTE ;
 scalar_t__ V4L2_CID_BASE ;
 scalar_t__ V4L2_CID_LASTP1 ;
 struct v4l2_queryctrl* ctrl_by_id (scalar_t__) ;
 struct v4l2_queryctrl no_ctrl ;

__attribute__((used)) static int radio_queryctrl(struct file *file, void *priv,
     struct v4l2_queryctrl *c)
{
 const struct v4l2_queryctrl *ctrl;

 if (c->id < V4L2_CID_BASE ||
     c->id >= V4L2_CID_LASTP1)
  return -EINVAL;
 if (c->id == V4L2_CID_AUDIO_MUTE) {
  ctrl = ctrl_by_id(c->id);
  *c = *ctrl;
 } else
  *c = no_ctrl;
 return 0;
}
