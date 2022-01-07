
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zoran_fh {struct zoran* zr; } ;
struct zoran {int resource_lock; } ;
struct v4l2_control {scalar_t__ id; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_CID_BRIGHTNESS ;
 scalar_t__ V4L2_CID_HUE ;
 int core ;
 int decoder_call (struct zoran*,int ,int ,struct v4l2_control*) ;
 int g_ctrl ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int zoran_g_ctrl(struct file *file, void *__fh, struct v4l2_control *ctrl)
{
 struct zoran_fh *fh = __fh;
 struct zoran *zr = fh->zr;


 if (ctrl->id < V4L2_CID_BRIGHTNESS ||
     ctrl->id > V4L2_CID_HUE)
  return -EINVAL;

 mutex_lock(&zr->resource_lock);
 decoder_call(zr, core, g_ctrl, ctrl);
 mutex_unlock(&zr->resource_lock);

 return 0;
}
