
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_voltage {scalar_t__ type; int voltage; } ;
struct radeon_power_state {TYPE_1__* clock_info; } ;
struct TYPE_4__ {int requested_power_state_index; int requested_clock_mode_index; int current_vddc; struct radeon_power_state* power_state; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct TYPE_3__ {struct radeon_voltage voltage; } ;


 int DRM_DEBUG (char*,int) ;
 int SET_VOLTAGE_TYPE_ASIC_VDDC ;
 scalar_t__ VOLTAGE_SW ;
 int radeon_atom_set_voltage (struct radeon_device*,int,int ) ;

void rv770_pm_misc(struct radeon_device *rdev)
{
 int req_ps_idx = rdev->pm.requested_power_state_index;
 int req_cm_idx = rdev->pm.requested_clock_mode_index;
 struct radeon_power_state *ps = &rdev->pm.power_state[req_ps_idx];
 struct radeon_voltage *voltage = &ps->clock_info[req_cm_idx].voltage;

 if ((voltage->type == VOLTAGE_SW) && voltage->voltage) {

  if (voltage->voltage == 0xff01)
   return;
  if (voltage->voltage != rdev->pm.current_vddc) {
   radeon_atom_set_voltage(rdev, voltage->voltage, SET_VOLTAGE_TYPE_ASIC_VDDC);
   rdev->pm.current_vddc = voltage->voltage;
   DRM_DEBUG("Setting: v: %d\n", voltage->voltage);
  }
 }
}
