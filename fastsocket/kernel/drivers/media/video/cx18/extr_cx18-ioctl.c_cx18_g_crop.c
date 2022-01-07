
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_crop {scalar_t__ type; } ;
struct file {int dummy; } ;
struct cx18_open_id {struct cx18* cx; } ;
struct cx18 {int dummy; } ;


 int CX18_DEBUG_WARN (char*) ;
 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;

__attribute__((used)) static int cx18_g_crop(struct file *file, void *fh, struct v4l2_crop *crop)
{
 struct cx18 *cx = ((struct cx18_open_id *)fh)->cx;

 if (crop->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;
 CX18_DEBUG_WARN("VIDIOC_G_CROP not implemented\n");
 return -EINVAL;
}
