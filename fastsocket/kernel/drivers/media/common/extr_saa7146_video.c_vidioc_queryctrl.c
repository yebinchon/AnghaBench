
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {scalar_t__ id; } ;
struct file {int dummy; } ;


 int DEB_EE (char*) ;
 int EINVAL ;
 scalar_t__ V4L2_CID_BASE ;
 scalar_t__ V4L2_CID_LASTP1 ;
 scalar_t__ V4L2_CID_PRIVATE_BASE ;
 scalar_t__ V4L2_CID_PRIVATE_LASTP1 ;
 struct v4l2_queryctrl* ctrl_by_id (scalar_t__) ;

__attribute__((used)) static int vidioc_queryctrl(struct file *file, void *fh, struct v4l2_queryctrl *c)
{
 const struct v4l2_queryctrl *ctrl;

 if ((c->id < V4L2_CID_BASE ||
      c->id >= V4L2_CID_LASTP1) &&
     (c->id < V4L2_CID_PRIVATE_BASE ||
      c->id >= V4L2_CID_PRIVATE_LASTP1))
  return -EINVAL;

 ctrl = ctrl_by_id(c->id);
 if (ctrl == ((void*)0))
  return -EINVAL;

 DEB_EE(("VIDIOC_QUERYCTRL: id:%d\n", c->id));
 *c = *ctrl;
 return 0;
}
