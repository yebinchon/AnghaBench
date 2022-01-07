
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pvclock_vcpu_time_info {int dummy; } ;
struct TYPE_4__ {TYPE_1__* vcpu_info; } ;
struct TYPE_3__ {struct pvclock_vcpu_time_info time; } ;


 TYPE_2__* HYPERVISOR_shared_info ;
 unsigned long pvclock_tsc_khz (struct pvclock_vcpu_time_info*) ;

unsigned long xen_tsc_khz(void)
{
 struct pvclock_vcpu_time_info *info =
  &HYPERVISOR_shared_info->vcpu_info[0].time;

 return pvclock_tsc_khz(info);
}
