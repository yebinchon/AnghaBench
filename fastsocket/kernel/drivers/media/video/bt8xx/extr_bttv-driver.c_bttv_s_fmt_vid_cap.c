
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int field; int height; int width; int pixelformat; } ;
struct TYPE_8__ {TYPE_3__ pix; } ;
struct v4l2_format {TYPE_4__ fmt; int type; } ;
struct file {int dummy; } ;
struct bttv_format {int dummy; } ;
struct TYPE_5__ {int field; int last; } ;
struct bttv_fh {int height; int width; TYPE_1__ cap; struct bttv_format const* fmt; struct bttv* btv; } ;
struct TYPE_6__ {int height; int width; struct bttv_format const* fmt; } ;
struct bttv {TYPE_2__ init; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
typedef int __s32 ;


 int V4L2_FIELD_NONE ;
 int bttv_switch_type (struct bttv_fh*,int ) ;
 int bttv_try_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;
 struct bttv_format* format_by_fourcc (int ) ;
 int limit_scaled_size_lock (struct bttv_fh*,int *,int *,int,int,int,int,int) ;

__attribute__((used)) static int bttv_s_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_format *f)
{
 int retval;
 const struct bttv_format *fmt;
 struct bttv_fh *fh = priv;
 struct bttv *btv = fh->btv;
 __s32 width, height;
 enum v4l2_field field;

 retval = bttv_switch_type(fh, f->type);
 if (0 != retval)
  return retval;

 retval = bttv_try_fmt_vid_cap(file, priv, f);
 if (0 != retval)
  return retval;

 width = f->fmt.pix.width;
 height = f->fmt.pix.height;
 field = f->fmt.pix.field;

 retval = limit_scaled_size_lock(fh, &width, &height, f->fmt.pix.field,
                                     ~3,
                                    2,
                            1,
                            1);
 if (0 != retval)
  return retval;

 f->fmt.pix.field = field;

 fmt = format_by_fourcc(f->fmt.pix.pixelformat);


 fh->fmt = fmt;
 fh->cap.field = f->fmt.pix.field;
 fh->cap.last = V4L2_FIELD_NONE;
 fh->width = f->fmt.pix.width;
 fh->height = f->fmt.pix.height;
 btv->init.fmt = fmt;
 btv->init.width = f->fmt.pix.width;
 btv->init.height = f->fmt.pix.height;

 return 0;
}
