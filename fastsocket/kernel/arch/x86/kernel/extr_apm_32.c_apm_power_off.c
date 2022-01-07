
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int po_bios_call ;
struct TYPE_2__ {scalar_t__ realmode_power_off; } ;


 int APM_STATE_OFF ;
 TYPE_1__ apm_info ;
 int cpumask_of (int ) ;
 int current ;
 int machine_real_restart (unsigned char*,int) ;
 int set_cpus_allowed_ptr (int ,int ) ;
 int set_system_power_state (int ) ;

__attribute__((used)) static void apm_power_off(void)
{
 unsigned char po_bios_call[] = {
  0xb8, 0x00, 0x10,
  0x8e, 0xd0,
  0xbc, 0x00, 0xf0,
  0xb8, 0x07, 0x53,
  0xbb, 0x01, 0x00,
  0xb9, 0x03, 0x00,
  0xcd, 0x15
 };


 if (apm_info.realmode_power_off) {
  set_cpus_allowed_ptr(current, cpumask_of(0));
  machine_real_restart(po_bios_call, sizeof(po_bios_call));
 } else {
  (void)set_system_power_state(APM_STATE_OFF);
 }
}
