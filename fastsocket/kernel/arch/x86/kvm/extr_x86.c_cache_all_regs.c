
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int regs_dirty; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int VCPU_REGS_RAX ;
 int VCPU_REGS_RIP ;
 int VCPU_REGS_RSP ;
 int kvm_register_read (struct kvm_vcpu*,int ) ;

__attribute__((used)) static void cache_all_regs(struct kvm_vcpu *vcpu)
{
 kvm_register_read(vcpu, VCPU_REGS_RAX);
 kvm_register_read(vcpu, VCPU_REGS_RSP);
 kvm_register_read(vcpu, VCPU_REGS_RIP);
 vcpu->arch.regs_dirty = ~0;
}
