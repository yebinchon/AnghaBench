
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_6__ {int offset; int length; } ;
struct TYPE_7__ {int length; int offset; } ;
struct TYPE_10__ {int offset; int length; } ;
struct TYPE_8__ {int offset; int length; } ;
struct TYPE_9__ {int height; int width; void* yres; void* xres; TYPE_1__ transp; TYPE_2__ blue; TYPE_5__ green; TYPE_3__ red; int activate; scalar_t__ yoffset; scalar_t__ xoffset; int accel_flags; int bits_per_pixel; int yres_virtual; int xres_virtual; } ;
struct fb_info {TYPE_4__ var; int pseudo_palette; } ;
struct drm_framebuffer {int depth; int bits_per_pixel; int height; int width; } ;
struct drm_fb_helper {int pseudo_palette; struct drm_framebuffer* fb; } ;


 int FB_ACCELF_TEXT ;
 int FB_ACTIVATE_NOW ;

void drm_fb_helper_fill_var(struct fb_info *info, struct drm_fb_helper *fb_helper,
       uint32_t fb_width, uint32_t fb_height)
{
 struct drm_framebuffer *fb = fb_helper->fb;
 info->pseudo_palette = fb_helper->pseudo_palette;
 info->var.xres_virtual = fb->width;
 info->var.yres_virtual = fb->height;
 info->var.bits_per_pixel = fb->bits_per_pixel;
 info->var.accel_flags = FB_ACCELF_TEXT;
 info->var.xoffset = 0;
 info->var.yoffset = 0;
 info->var.activate = FB_ACTIVATE_NOW;
 info->var.height = -1;
 info->var.width = -1;

 switch (fb->depth) {
 case 8:
  info->var.red.offset = 0;
  info->var.green.offset = 0;
  info->var.blue.offset = 0;
  info->var.red.length = 8;
  info->var.green.length = 8;
  info->var.blue.length = 8;
  info->var.transp.offset = 0;
  info->var.transp.length = 0;
  break;
 case 15:
  info->var.red.offset = 10;
  info->var.green.offset = 5;
  info->var.blue.offset = 0;
  info->var.red.length = 5;
  info->var.green.length = 5;
  info->var.blue.length = 5;
  info->var.transp.offset = 15;
  info->var.transp.length = 1;
  break;
 case 16:
  info->var.red.offset = 11;
  info->var.green.offset = 5;
  info->var.blue.offset = 0;
  info->var.red.length = 5;
  info->var.green.length = 6;
  info->var.blue.length = 5;
  info->var.transp.offset = 0;
  break;
 case 24:
  info->var.red.offset = 16;
  info->var.green.offset = 8;
  info->var.blue.offset = 0;
  info->var.red.length = 8;
  info->var.green.length = 8;
  info->var.blue.length = 8;
  info->var.transp.offset = 0;
  info->var.transp.length = 0;
  break;
 case 32:
  info->var.red.offset = 16;
  info->var.green.offset = 8;
  info->var.blue.offset = 0;
  info->var.red.length = 8;
  info->var.green.length = 8;
  info->var.blue.length = 8;
  info->var.transp.offset = 24;
  info->var.transp.length = 8;
  break;
 default:
  break;
 }

 info->var.xres = fb_width;
 info->var.yres = fb_height;
}
