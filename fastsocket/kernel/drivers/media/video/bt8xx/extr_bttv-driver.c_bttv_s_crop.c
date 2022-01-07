
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct v4l2_rect {int left; int width; int top; int height; } ;
struct TYPE_7__ {int height; int top; int width; int left; } ;
struct v4l2_crop {scalar_t__ type; TYPE_2__ c; } ;
struct file {int dummy; } ;
struct bttv_fh {int do_crop; scalar_t__ width; scalar_t__ height; struct bttv* btv; int prio; } ;
struct TYPE_8__ {int left; int top; int height; void* width; } ;
struct bttv_crop {scalar_t__ min_scaled_width; scalar_t__ max_scaled_width; scalar_t__ min_scaled_height; scalar_t__ max_scaled_height; TYPE_3__ rect; } ;
struct TYPE_9__ {scalar_t__ width; scalar_t__ height; } ;
struct bttv {size_t tvnorm; TYPE_4__ init; struct bttv_crop* crop; int vbi_end; int prio; } ;
typedef int __s32 ;
struct TYPE_6__ {struct v4l2_rect bounds; } ;
struct TYPE_10__ {TYPE_1__ cropcap; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ MAX_HDELAY ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OVERLAY ;
 int VIDEO_RESOURCES ;
 int bttv_crop_calc_limits (struct bttv_crop*) ;
 TYPE_5__* bttv_tvnorms ;
 void* clamp (int ,int,int) ;
 scalar_t__ locked_btres (struct bttv*,int ) ;
 int max (int,int ) ;
 int min (int,int) ;
 int v4l2_prio_check (int *,int ) ;

__attribute__((used)) static int bttv_s_crop(struct file *file, void *f, struct v4l2_crop *crop)
{
 struct bttv_fh *fh = f;
 struct bttv *btv = fh->btv;
 const struct v4l2_rect *b;
 int retval;
 struct bttv_crop c;
 __s32 b_left;
 __s32 b_top;
 __s32 b_right;
 __s32 b_bottom;

 if (crop->type != V4L2_BUF_TYPE_VIDEO_CAPTURE &&
     crop->type != V4L2_BUF_TYPE_VIDEO_OVERLAY)
  return -EINVAL;




 retval = v4l2_prio_check(&btv->prio, fh->prio);
 if (0 != retval) {
  return retval;
 }

 retval = -EBUSY;

 if (locked_btres(fh->btv, VIDEO_RESOURCES)) {
  return retval;
 }

 b = &bttv_tvnorms[btv->tvnorm].cropcap.bounds;

 b_left = b->left;
 b_right = b_left + b->width;
 b_bottom = b->top + b->height;

 b_top = max(b->top, btv->vbi_end);
 if (b_top + 32 >= b_bottom) {
  return retval;
 }


 c.rect.left = clamp(crop->c.left, b_left, b_right - 48);
 c.rect.left = min(c.rect.left, (__s32) MAX_HDELAY);

 c.rect.width = clamp(crop->c.width,
        48, b_right - c.rect.left);

 c.rect.top = clamp(crop->c.top, b_top, b_bottom - 32);

 c.rect.top = (c.rect.top + 1) & ~1;

 c.rect.height = clamp(crop->c.height,
         32, b_bottom - c.rect.top);
 c.rect.height = (c.rect.height + 1) & ~1;

 bttv_crop_calc_limits(&c);

 btv->crop[1] = c;

 fh->do_crop = 1;

 if (fh->width < c.min_scaled_width) {
  fh->width = c.min_scaled_width;
  btv->init.width = c.min_scaled_width;
 } else if (fh->width > c.max_scaled_width) {
  fh->width = c.max_scaled_width;
  btv->init.width = c.max_scaled_width;
 }

 if (fh->height < c.min_scaled_height) {
  fh->height = c.min_scaled_height;
  btv->init.height = c.min_scaled_height;
 } else if (fh->height > c.max_scaled_height) {
  fh->height = c.max_scaled_height;
  btv->init.height = c.max_scaled_height;
 }

 return 0;
}
