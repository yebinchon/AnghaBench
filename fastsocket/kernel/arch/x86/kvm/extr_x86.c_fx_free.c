
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int guest_fpu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int fpu_free (int *) ;

__attribute__((used)) static void fx_free(struct kvm_vcpu *vcpu)
{
 fpu_free(&vcpu->arch.guest_fpu);
}
