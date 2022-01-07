
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int dummy; } ;
struct file {int dummy; } ;



__attribute__((used)) static int tlg_fm_vidioc_g_ctrl(struct file *file, void *priv,
  struct v4l2_control *arg)
{
 return 0;
}
