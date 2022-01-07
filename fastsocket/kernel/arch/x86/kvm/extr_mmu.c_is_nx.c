
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int shadow_efer; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int EFER_NX ;

__attribute__((used)) static int is_nx(struct kvm_vcpu *vcpu)
{
 return vcpu->arch.shadow_efer & EFER_NX;
}
