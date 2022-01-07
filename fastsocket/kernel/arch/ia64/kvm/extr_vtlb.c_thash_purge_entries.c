
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int tc_regions; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 scalar_t__ vcpu_quick_region_check (int ,int ) ;
 int vhpt_purge (struct kvm_vcpu*,int ,int ) ;
 int vtlb_purge (struct kvm_vcpu*,int ,int ) ;

void thash_purge_entries(struct kvm_vcpu *v, u64 va, u64 ps)
{
 if (vcpu_quick_region_check(v->arch.tc_regions, va))
  vtlb_purge(v, va, ps);
 vhpt_purge(v, va, ps);
}
