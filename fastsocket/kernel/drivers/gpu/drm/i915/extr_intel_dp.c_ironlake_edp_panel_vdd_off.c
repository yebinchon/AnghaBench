
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int want_panel_vdd; int panel_power_cycle_delay; int panel_vdd_work; } ;


 int DRM_DEBUG_KMS (char*,int) ;
 int WARN (int,char*) ;
 int ironlake_panel_vdd_off_sync (struct intel_dp*) ;
 int is_edp (struct intel_dp*) ;
 int msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,int ) ;

void ironlake_edp_panel_vdd_off(struct intel_dp *intel_dp, bool sync)
{
 if (!is_edp(intel_dp))
  return;

 DRM_DEBUG_KMS("Turn eDP VDD off %d\n", intel_dp->want_panel_vdd);
 WARN(!intel_dp->want_panel_vdd, "eDP VDD not forced on");

 intel_dp->want_panel_vdd = 0;

 if (sync) {
  ironlake_panel_vdd_off_sync(intel_dp);
 } else {





  schedule_delayed_work(&intel_dp->panel_vdd_work,
          msecs_to_jiffies(intel_dp->panel_power_cycle_delay * 5));
 }
}
