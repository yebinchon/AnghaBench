
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct drm_display_mode {int dummy; } ;


 size_t ARRAY_SIZE (int *) ;
 scalar_t__ drm_mode_equal (struct drm_display_mode const*,struct drm_display_mode*) ;
 int * edid_cea_modes ;

u8 drm_match_cea_mode(const struct drm_display_mode *to_match)
{
 struct drm_display_mode *cea_mode;
 u8 mode;

 for (mode = 0; mode < ARRAY_SIZE(edid_cea_modes); mode++) {
  cea_mode = (struct drm_display_mode *)&edid_cea_modes[mode];

  if (drm_mode_equal(to_match, cea_mode))
   return mode + 1;
 }
 return 0;
}
