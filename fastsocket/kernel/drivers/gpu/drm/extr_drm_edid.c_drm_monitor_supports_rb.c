
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct edid {int revision; int input; } ;


 int DRM_EDID_INPUT_DIGITAL ;
 int drm_for_each_detailed_block (int *,int ,int*) ;
 int is_rb ;

__attribute__((used)) static bool
drm_monitor_supports_rb(struct edid *edid)
{
 if (edid->revision >= 4) {
  bool ret = 0;
  drm_for_each_detailed_block((u8 *)edid, is_rb, &ret);
  return ret;
 }

 return ((edid->input & DRM_EDID_INPUT_DIGITAL) != 0);
}
