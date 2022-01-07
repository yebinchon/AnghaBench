
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_fb_cmd2 {int pixel_format; int * offsets; int * pitches; int height; int width; } ;
struct drm_framebuffer {int pixel_format; int bits_per_pixel; int depth; int * offsets; int * pitches; int height; int width; } ;


 int drm_fb_get_bpp_depth (int ,int *,int *) ;

int drm_helper_mode_fill_fb_struct(struct drm_framebuffer *fb,
       struct drm_mode_fb_cmd2 *mode_cmd)
{
 int i;

 fb->width = mode_cmd->width;
 fb->height = mode_cmd->height;
 for (i = 0; i < 4; i++) {
  fb->pitches[i] = mode_cmd->pitches[i];
  fb->offsets[i] = mode_cmd->offsets[i];
 }
 drm_fb_get_bpp_depth(mode_cmd->pixel_format, &fb->depth,
        &fb->bits_per_pixel);
 fb->pixel_format = mode_cmd->pixel_format;

 return 0;
}
