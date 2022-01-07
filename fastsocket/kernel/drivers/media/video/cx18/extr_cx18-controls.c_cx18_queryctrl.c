
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int id; int * name; int flags; } ;
struct file {int dummy; } ;
struct cx18_open_id {struct cx18* cx; } ;
struct cx18 {int params; int sd_av; } ;


 int EINVAL ;
 int V4L2_CTRL_FLAG_DISABLED ;
 int core ;
 int ctrl_classes ;
 int cx2341x_ctrl_query (int *,struct v4l2_queryctrl*) ;
 int queryctrl ;
 int strncpy (int *,char const*,int) ;
 int v4l2_ctrl_next (int ,int) ;
 int v4l2_ctrl_query_fill (struct v4l2_queryctrl*,int ,int ,int ,int ) ;
 int v4l2_subdev_call (int ,int ,int ,struct v4l2_queryctrl*) ;

int cx18_queryctrl(struct file *file, void *fh, struct v4l2_queryctrl *qctrl)
{
 struct cx18 *cx = ((struct cx18_open_id *)fh)->cx;
 const char *name;

 qctrl->id = v4l2_ctrl_next(ctrl_classes, qctrl->id);
 if (qctrl->id == 0)
  return -EINVAL;

 switch (qctrl->id) {

 case 128:
  return v4l2_ctrl_query_fill(qctrl, 0, 0, 0, 0);
 case 132:
 case 130:
 case 129:
 case 131:
  if (v4l2_subdev_call(cx->sd_av, core, queryctrl, qctrl))
   qctrl->flags |= V4L2_CTRL_FLAG_DISABLED;
  return 0;

 case 133:
 case 135:
 case 138:
 case 137:
 case 134:
 case 136:
  if (v4l2_subdev_call(cx->sd_av, core, queryctrl, qctrl))
   qctrl->flags |= V4L2_CTRL_FLAG_DISABLED;
  return 0;

 default:
  if (cx2341x_ctrl_query(&cx->params, qctrl))
   qctrl->flags |= V4L2_CTRL_FLAG_DISABLED;
  return 0;
 }
 strncpy(qctrl->name, name, sizeof(qctrl->name) - 1);
 qctrl->name[sizeof(qctrl->name) - 1] = 0;
 return 0;
}
