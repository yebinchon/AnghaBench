
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct file {int dummy; } ;



__attribute__((used)) static int vidioc_try_fmt(struct file *file, void *fh,
  struct v4l2_format *f)
{
 return 0;
}
