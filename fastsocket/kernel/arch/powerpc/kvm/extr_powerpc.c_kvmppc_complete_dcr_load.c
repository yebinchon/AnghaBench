
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_3__ {size_t io_gpr; int * gpr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int data; } ;
struct kvm_run {TYPE_2__ dcr; } ;



__attribute__((used)) static void kvmppc_complete_dcr_load(struct kvm_vcpu *vcpu,
                                     struct kvm_run *run)
{
 ulong *gpr = &vcpu->arch.gpr[vcpu->arch.io_gpr];
 *gpr = run->dcr.data;
}
