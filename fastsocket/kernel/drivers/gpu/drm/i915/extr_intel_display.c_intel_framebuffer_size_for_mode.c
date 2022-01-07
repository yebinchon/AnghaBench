
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_display_mode {int vdisplay; int hdisplay; } ;


 int ALIGN (int,int ) ;
 int PAGE_SIZE ;
 int intel_framebuffer_pitch_for_width (int ,int) ;

__attribute__((used)) static u32
intel_framebuffer_size_for_mode(struct drm_display_mode *mode, int bpp)
{
 u32 pitch = intel_framebuffer_pitch_for_width(mode->hdisplay, bpp);
 return ALIGN(pitch * mode->vdisplay, PAGE_SIZE);
}
