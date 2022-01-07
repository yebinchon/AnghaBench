
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_modeinfo {scalar_t__ clock; scalar_t__ vrefresh; int name; int type; int flags; int vscan; int vtotal; int vsync_end; int vsync_start; int vdisplay; int hskew; int htotal; int hsync_end; int hsync_start; int hdisplay; } ;
struct drm_display_mode {scalar_t__ clock; scalar_t__ vrefresh; scalar_t__* name; int type; int flags; int vscan; int vtotal; int vsync_end; int vsync_start; int vdisplay; int hskew; int htotal; int hsync_end; int hsync_start; int hdisplay; } ;


 int DRM_DISPLAY_MODE_LEN ;
 int ERANGE ;
 scalar_t__ INT_MAX ;
 int strncpy (scalar_t__*,int ,int) ;

__attribute__((used)) static int drm_crtc_convert_umode(struct drm_display_mode *out,
      const struct drm_mode_modeinfo *in)
{
 if (in->clock > INT_MAX || in->vrefresh > INT_MAX)
  return -ERANGE;

 out->clock = in->clock;
 out->hdisplay = in->hdisplay;
 out->hsync_start = in->hsync_start;
 out->hsync_end = in->hsync_end;
 out->htotal = in->htotal;
 out->hskew = in->hskew;
 out->vdisplay = in->vdisplay;
 out->vsync_start = in->vsync_start;
 out->vsync_end = in->vsync_end;
 out->vtotal = in->vtotal;
 out->vscan = in->vscan;
 out->vrefresh = in->vrefresh;
 out->flags = in->flags;
 out->type = in->type;
 strncpy(out->name, in->name, DRM_DISPLAY_MODE_LEN);
 out->name[DRM_DISPLAY_MODE_LEN-1] = 0;

 return 0;
}
