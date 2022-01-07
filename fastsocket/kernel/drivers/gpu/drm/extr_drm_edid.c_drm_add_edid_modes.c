
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct edid {int features; } ;
struct drm_connector {int display_info; TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int DRM_EDID_FEATURE_DEFAULT_GTF ;
 int EDID_QUIRK_PREFER_LARGE_60 ;
 int EDID_QUIRK_PREFER_LARGE_75 ;
 scalar_t__ add_cea_modes (struct drm_connector*,struct edid*) ;
 scalar_t__ add_cvt_modes (struct drm_connector*,struct edid*) ;
 scalar_t__ add_detailed_modes (struct drm_connector*,struct edid*,int) ;
 scalar_t__ add_established_modes (struct drm_connector*,struct edid*) ;
 scalar_t__ add_inferred_modes (struct drm_connector*,struct edid*) ;
 scalar_t__ add_standard_modes (struct drm_connector*,struct edid*) ;
 int dev_warn (int ,char*,int ) ;
 int drm_add_display_info (struct edid*,int *) ;
 int drm_edid_is_valid (struct edid*) ;
 int drm_get_connector_name (struct drm_connector*) ;
 int edid_fixup_preferred (struct drm_connector*,int) ;
 int edid_get_quirks (struct edid*) ;

int drm_add_edid_modes(struct drm_connector *connector, struct edid *edid)
{
 int num_modes = 0;
 u32 quirks;

 if (edid == ((void*)0)) {
  return 0;
 }
 if (!drm_edid_is_valid(edid)) {
  dev_warn(connector->dev->dev, "%s: EDID invalid.\n",
    drm_get_connector_name(connector));
  return 0;
 }

 quirks = edid_get_quirks(edid);
 num_modes += add_detailed_modes(connector, edid, quirks);
 num_modes += add_cvt_modes(connector, edid);
 num_modes += add_standard_modes(connector, edid);
 num_modes += add_established_modes(connector, edid);
 if (edid->features & DRM_EDID_FEATURE_DEFAULT_GTF)
  num_modes += add_inferred_modes(connector, edid);
 num_modes += add_cea_modes(connector, edid);

 if (quirks & (EDID_QUIRK_PREFER_LARGE_60 | EDID_QUIRK_PREFER_LARGE_75))
  edid_fixup_preferred(connector, quirks);

 drm_add_display_info(edid, &connector->display_info);

 return num_modes;
}
