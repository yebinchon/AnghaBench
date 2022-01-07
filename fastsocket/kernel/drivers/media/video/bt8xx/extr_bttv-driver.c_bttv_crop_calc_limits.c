
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; int height; } ;
struct bttv_crop {int min_scaled_width; int min_scaled_height; int max_scaled_width; int max_scaled_height; TYPE_1__ rect; } ;


 int max (int,int) ;

__attribute__((used)) static void
bttv_crop_calc_limits(struct bttv_crop *c)
{



 if (1) {


  c->min_scaled_width = 48;
  c->min_scaled_height = 32;
 } else {
  c->min_scaled_width =
   (max(48, c->rect.width >> 4) + 3) & ~3;
  c->min_scaled_height =
   max(32, c->rect.height >> 4);
 }

 c->max_scaled_width = c->rect.width & ~3;
 c->max_scaled_height = c->rect.height;
}
