
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_display_mode {int type; } ;
struct detailed_timing {scalar_t__ pixel_clock; } ;
struct detailed_mode_closure {scalar_t__ preferred; int modes; TYPE_1__* connector; int quirks; int edid; } ;
struct TYPE_2__ {int dev; } ;


 int DRM_MODE_TYPE_PREFERRED ;
 struct drm_display_mode* drm_mode_detailed (int ,int ,struct detailed_timing*,int ) ;
 int drm_mode_probed_add (TYPE_1__*,struct drm_display_mode*) ;

__attribute__((used)) static void
do_detailed_mode(struct detailed_timing *timing, void *c)
{
 struct detailed_mode_closure *closure = c;
 struct drm_display_mode *newmode;

 if (timing->pixel_clock) {
  newmode = drm_mode_detailed(closure->connector->dev,
         closure->edid, timing,
         closure->quirks);
  if (!newmode)
   return;

  if (closure->preferred)
   newmode->type |= DRM_MODE_TYPE_PREFERRED;

  drm_mode_probed_add(closure->connector, newmode);
  closure->modes++;
  closure->preferred = 0;
 }
}
