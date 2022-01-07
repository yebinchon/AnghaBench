
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int field; int height; int width; int pixelformat; } ;
struct TYPE_7__ {TYPE_4__ pix; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct file {int dummy; } ;
struct bttv_format {int flags; } ;
struct bttv_fh {int do_crop; struct bttv* btv; } ;
struct bttv {TYPE_2__* crop; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
typedef int __s32 ;
struct TYPE_5__ {int height; } ;
struct TYPE_6__ {TYPE_1__ rect; } ;


 int EINVAL ;
 int FORMAT_FLAGS_PLANAR ;

 int V4L2_FIELD_ANY ;


 int V4L2_FIELD_SEQ_BT ;


 struct bttv_format* format_by_fourcc (int ) ;
 int limit_scaled_size_lock (struct bttv_fh*,int*,int*,int,int,int,int,int ) ;
 int pix_format_set_size (TYPE_4__*,struct bttv_format const*,int,int) ;

__attribute__((used)) static int bttv_try_fmt_vid_cap(struct file *file, void *priv,
      struct v4l2_format *f)
{
 const struct bttv_format *fmt;
 struct bttv_fh *fh = priv;
 struct bttv *btv = fh->btv;
 enum v4l2_field field;
 __s32 width, height;
 int rc;

 fmt = format_by_fourcc(f->fmt.pix.pixelformat);
 if (((void*)0) == fmt)
  return -EINVAL;

 field = f->fmt.pix.field;

 if (V4L2_FIELD_ANY == field) {
  __s32 height2;

  height2 = btv->crop[!!fh->do_crop].rect.height >> 1;
  field = (f->fmt.pix.height > height2)
   ? 130
   : 131;
 }

 if (V4L2_FIELD_SEQ_BT == field)
  field = 129;

 switch (field) {
 case 128:
 case 131:
 case 132:
 case 130:
  break;
 case 129:
  if (fmt->flags & FORMAT_FLAGS_PLANAR)
   return -EINVAL;
  break;
 default:
  return -EINVAL;
 }

 width = f->fmt.pix.width;
 height = f->fmt.pix.height;

 rc = limit_scaled_size_lock(fh, &width, &height, field,
                                     ~3,
                                    2,
                            1,
                            0);
 if (0 != rc)
  return rc;


 f->fmt.pix.field = field;
 pix_format_set_size(&f->fmt.pix, fmt, width, height);

 return 0;
}
