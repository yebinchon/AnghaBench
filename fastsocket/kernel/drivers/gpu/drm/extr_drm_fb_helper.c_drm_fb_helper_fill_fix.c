
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int xpanstep; int ypanstep; int line_length; scalar_t__ type_aux; int accel; scalar_t__ ywrapstep; scalar_t__ mmio_len; scalar_t__ mmio_start; int visual; int type; } ;
struct fb_info {TYPE_1__ fix; } ;


 int FB_ACCEL_NONE ;
 int FB_TYPE_PACKED_PIXELS ;
 int FB_VISUAL_PSEUDOCOLOR ;
 int FB_VISUAL_TRUECOLOR ;

void drm_fb_helper_fill_fix(struct fb_info *info, uint32_t pitch,
       uint32_t depth)
{
 info->fix.type = FB_TYPE_PACKED_PIXELS;
 info->fix.visual = depth == 8 ? FB_VISUAL_PSEUDOCOLOR :
  FB_VISUAL_TRUECOLOR;
 info->fix.mmio_start = 0;
 info->fix.mmio_len = 0;
 info->fix.type_aux = 0;
 info->fix.xpanstep = 1;
 info->fix.ypanstep = 1;
 info->fix.ywrapstep = 0;
 info->fix.accel = FB_ACCEL_NONE;
 info->fix.type_aux = 0;

 info->fix.line_length = pitch;
 return;
}
