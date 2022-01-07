
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int width; int height; unsigned int left; } ;
struct v4l2_window {int clipcount; int field; TYPE_5__ w; } ;
struct bttv_fh {TYPE_4__* ovfmt; int do_crop; TYPE_3__* btv; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
typedef int __s32 ;
struct TYPE_9__ {int depth; } ;
struct TYPE_8__ {TYPE_2__* crop; } ;
struct TYPE_6__ {int height; } ;
struct TYPE_7__ {TYPE_1__ rect; } ;


 int BUG () ;
 int EINVAL ;
 int V4L2_FIELD_ANY ;



 int limit_scaled_size_lock (struct bttv_fh*,unsigned int*,int*,int,unsigned int,int ,int,int) ;

__attribute__((used)) static int
verify_window_lock (struct bttv_fh * fh,
    struct v4l2_window * win,
    int adjust_size,
    int adjust_crop)
{
 enum v4l2_field field;
 unsigned int width_mask;
 int rc;

 if (win->w.width < 48 || win->w.height < 32)
  return -EINVAL;
 if (win->clipcount > 2048)
  return -EINVAL;

 field = win->field;

 if (V4L2_FIELD_ANY == field) {
  __s32 height2;

  height2 = fh->btv->crop[!!fh->do_crop].rect.height >> 1;
  field = (win->w.height > height2)
   ? 129
   : 128;
 }
 switch (field) {
 case 128:
 case 130:
 case 129:
  break;
 default:
  return -EINVAL;
 }


 if (((void*)0) == fh->ovfmt)
  return -EINVAL;
 width_mask = ~0;
 switch (fh->ovfmt->depth) {
 case 8:
 case 24:
  width_mask = ~3;
  break;
 case 16:
  width_mask = ~1;
  break;
 case 32:
  break;
 default:
  BUG();
 }

 win->w.width -= win->w.left & ~width_mask;
 win->w.left = (win->w.left - width_mask - 1) & width_mask;

 rc = limit_scaled_size_lock(fh, &win->w.width, &win->w.height,
          field, width_mask,
                                       0,
          adjust_size, adjust_crop);
 if (0 != rc)
  return rc;

 win->field = field;
 return 0;
}
