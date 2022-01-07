
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int id; int flags; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_CID_TUNE_PREEMPHASIS ;
 int V4L2_CTRL_FLAG_NEXT_CTRL ;
 int V4L2_CTRL_FLAG_UPDATE ;
 int V4L2_PREEMPHASIS_50_uS ;
 int V4L2_PREEMPHASIS_75_uS ;
 int V4L2_PREEMPHASIS_DISABLED ;
 int v4l2_ctrl_query_fill (struct v4l2_queryctrl*,int ,int ,int,int ) ;

__attribute__((used)) static int tlg_fm_vidioc_queryctrl(struct file *file, void *priv,
  struct v4l2_queryctrl *ctrl)
{
 if (!(ctrl->id & V4L2_CTRL_FLAG_NEXT_CTRL))
  return -EINVAL;

 ctrl->id &= ~V4L2_CTRL_FLAG_NEXT_CTRL;
 if (ctrl->id != V4L2_CID_TUNE_PREEMPHASIS) {

  ctrl->id = V4L2_CID_TUNE_PREEMPHASIS;
  v4l2_ctrl_query_fill(ctrl, V4L2_PREEMPHASIS_DISABLED,
     V4L2_PREEMPHASIS_75_uS, 1,
     V4L2_PREEMPHASIS_50_uS);
  ctrl->flags = V4L2_CTRL_FLAG_UPDATE;
  return 0;
 }
 return -EINVAL;
}
