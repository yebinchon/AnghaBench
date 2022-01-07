
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_crop {scalar_t__ type; int c; } ;
struct file {int dummy; } ;
struct bttv_fh {int do_crop; struct bttv* btv; } ;
struct bttv {TYPE_1__* crop; } ;
struct TYPE_2__ {int rect; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OVERLAY ;

__attribute__((used)) static int bttv_g_crop(struct file *file, void *f, struct v4l2_crop *crop)
{
 struct bttv_fh *fh = f;
 struct bttv *btv = fh->btv;

 if (crop->type != V4L2_BUF_TYPE_VIDEO_CAPTURE &&
     crop->type != V4L2_BUF_TYPE_VIDEO_OVERLAY)
  return -EINVAL;





 crop->c = btv->crop[!!fh->do_crop].rect;

 return 0;
}
