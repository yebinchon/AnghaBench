
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* v4l2_kioctl ) (struct file*,int ,struct v4l2_queryctrl*) ;
struct v4l2_queryctrl {int id; int flags; int value; int minimum; int maximum; } ;
struct v4l2_control {int id; int flags; int value; int minimum; int maximum; } ;
struct file {int dummy; } ;


 int DIV_ROUND_CLOSEST (int,int) ;
 int V4L2_CTRL_FLAG_DISABLED ;
 int VIDIOC_G_CTRL ;
 int VIDIOC_QUERYCTRL ;
 int dprintk (char*,int) ;

__attribute__((used)) static int
get_v4l_control(struct file *file,
  int cid,
  v4l2_kioctl drv)
{
 struct v4l2_queryctrl qctrl2;
 struct v4l2_control ctrl2;
 int err;

 qctrl2.id = cid;
 err = drv(file, VIDIOC_QUERYCTRL, &qctrl2);
 if (err < 0)
  dprintk("VIDIOC_QUERYCTRL: %d\n", err);
 if (err == 0 && !(qctrl2.flags & V4L2_CTRL_FLAG_DISABLED)) {
  ctrl2.id = qctrl2.id;
  err = drv(file, VIDIOC_G_CTRL, &ctrl2);
  if (err < 0) {
   dprintk("VIDIOC_G_CTRL: %d\n", err);
   return 0;
  }
  return DIV_ROUND_CLOSEST((ctrl2.value-qctrl2.minimum) * 65535,
      qctrl2.maximum - qctrl2.minimum);
 }
 return 0;
}
