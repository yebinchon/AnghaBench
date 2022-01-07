
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_rect {int left; int width; int top; int height; } ;
struct TYPE_2__ {int width; int left; int height; int top; } ;
struct bttv_crop {int min_scaled_width; int max_scaled_width; int min_scaled_height; int max_scaled_height; TYPE_1__ rect; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
typedef int __s32 ;


 scalar_t__ MAX_HDELAY ;
 int V4L2_FIELD_HAS_BOTH (int) ;
 int bttv_crop_calc_limits (struct bttv_crop*) ;
 int min (int,int) ;

__attribute__((used)) static void
bttv_crop_adjust (struct bttv_crop * c,
    const struct v4l2_rect * b,
    __s32 width,
    __s32 height,
    enum v4l2_field field)
{
 __s32 frame_height = height << !V4L2_FIELD_HAS_BOTH(field);
 __s32 max_left;
 __s32 max_top;

 if (width < c->min_scaled_width) {

  c->rect.width = width * 16;
 } else if (width > c->max_scaled_width) {

  c->rect.width = width;

  max_left = b->left + b->width - width;
  max_left = min(max_left, (__s32) MAX_HDELAY);
  if (c->rect.left > max_left)
   c->rect.left = max_left;
 }

 if (height < c->min_scaled_height) {

  c->rect.height = height * 16;
 } else if (frame_height > c->max_scaled_height) {


  c->rect.height = (frame_height + 1) & ~1;

  max_top = b->top + b->height - c->rect.height;
  if (c->rect.top > max_top)
   c->rect.top = max_top;
 }

 bttv_crop_calc_limits(c);
}
