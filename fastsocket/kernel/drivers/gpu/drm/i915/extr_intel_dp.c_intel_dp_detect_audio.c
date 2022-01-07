
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int adapter; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;


 int drm_detect_monitor_audio (struct edid*) ;
 struct intel_dp* intel_attached_dp (struct drm_connector*) ;
 struct edid* intel_dp_get_edid (struct drm_connector*,int *) ;
 int kfree (struct edid*) ;

__attribute__((used)) static bool
intel_dp_detect_audio(struct drm_connector *connector)
{
 struct intel_dp *intel_dp = intel_attached_dp(connector);
 struct edid *edid;
 bool has_audio = 0;

 edid = intel_dp_get_edid(connector, &intel_dp->adapter);
 if (edid) {
  has_audio = drm_detect_monitor_audio(edid);
  kfree(edid);
 }

 return has_audio;
}
