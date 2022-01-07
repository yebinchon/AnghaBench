
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_lapic {TYPE_2__* vcpu; } ;
struct TYPE_3__ {scalar_t__ tpr_access_reporting; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 int __report_tpr_access (struct kvm_lapic*,int) ;

__attribute__((used)) static inline void report_tpr_access(struct kvm_lapic *apic, bool write)
{
 if (apic->vcpu->arch.tpr_access_reporting)
  __report_tpr_access(apic, write);
}
