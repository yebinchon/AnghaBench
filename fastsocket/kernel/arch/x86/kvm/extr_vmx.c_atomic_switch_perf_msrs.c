
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_vmx {int dummy; } ;
struct perf_guest_switch_msr {scalar_t__ host; scalar_t__ guest; int msr; } ;


 int add_atomic_switch_msr (struct vcpu_vmx*,int ,scalar_t__,scalar_t__) ;
 int clear_atomic_switch_msr (struct vcpu_vmx*,int ) ;
 struct perf_guest_switch_msr* perf_guest_get_msrs (int*) ;

__attribute__((used)) static void atomic_switch_perf_msrs(struct vcpu_vmx *vmx)
{
 int i, nr_msrs;
 struct perf_guest_switch_msr *msrs;

 msrs = perf_guest_get_msrs(&nr_msrs);

 if (!msrs)
  return;

 for (i = 0; i < nr_msrs; i++)
  if (msrs[i].host == msrs[i].guest)
   clear_atomic_switch_msr(vmx, msrs[i].msr);
  else
   add_atomic_switch_msr(vmx, msrs[i].msr, msrs[i].guest,
     msrs[i].host);
}
