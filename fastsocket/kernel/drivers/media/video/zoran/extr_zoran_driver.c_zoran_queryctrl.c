
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zoran_fh {struct zoran* zr; } ;
struct zoran {int dummy; } ;
struct v4l2_queryctrl {scalar_t__ id; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_CID_BRIGHTNESS ;
 scalar_t__ V4L2_CID_HUE ;
 int core ;
 int decoder_call (struct zoran*,int ,int ,struct v4l2_queryctrl*) ;
 int queryctrl ;

__attribute__((used)) static int zoran_queryctrl(struct file *file, void *__fh,
     struct v4l2_queryctrl *ctrl)
{
 struct zoran_fh *fh = __fh;
 struct zoran *zr = fh->zr;


 if (ctrl->id < V4L2_CID_BRIGHTNESS ||
     ctrl->id > V4L2_CID_HUE)
  return -EINVAL;

 decoder_call(zr, core, queryctrl, ctrl);

 return 0;
}
