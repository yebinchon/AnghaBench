
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_crop {scalar_t__ type; } ;
struct file {int dummy; } ;
struct cx18_open_id {int prio; struct cx18* cx; } ;
struct cx18 {int prio; } ;


 int CX18_DEBUG_WARN (char*) ;
 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int v4l2_prio_check (int *,int ) ;

__attribute__((used)) static int cx18_s_crop(struct file *file, void *fh, struct v4l2_crop *crop)
{
 struct cx18_open_id *id = fh;
 struct cx18 *cx = id->cx;
 int ret;

 ret = v4l2_prio_check(&cx->prio, id->prio);
 if (ret)
  return ret;

 if (crop->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;
 CX18_DEBUG_WARN("VIDIOC_S_CROP not implemented\n");
 return -EINVAL;
}
