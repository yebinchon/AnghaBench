
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {unsigned int cr3; int pdptrs; int regs_avail; } ;
struct kvm_vcpu {TYPE_1__ arch; int kvm; } ;
typedef int pdpte ;


 int ARRAY_SIZE (int ) ;
 int VCPU_EXREG_PDPTR ;
 scalar_t__ is_long_mode (struct kvm_vcpu*) ;
 int is_pae (struct kvm_vcpu*) ;
 int kvm_read_guest (int ,unsigned int,int *,int) ;
 scalar_t__ memcmp (int *,int ,int) ;
 int test_bit (int ,unsigned long*) ;

__attribute__((used)) static bool pdptrs_changed(struct kvm_vcpu *vcpu)
{
 u64 pdpte[ARRAY_SIZE(vcpu->arch.pdptrs)];
 bool changed = 1;
 int r;

 if (is_long_mode(vcpu) || !is_pae(vcpu))
  return 0;

 if (!test_bit(VCPU_EXREG_PDPTR,
        (unsigned long *)&vcpu->arch.regs_avail))
  return 1;

 r = kvm_read_guest(vcpu->kvm, vcpu->arch.cr3 & ~31u, pdpte, sizeof(pdpte));
 if (r < 0)
  goto out;
 changed = memcmp(pdpte, vcpu->arch.pdptrs, sizeof(pdpte)) != 0;
out:

 return changed;
}
