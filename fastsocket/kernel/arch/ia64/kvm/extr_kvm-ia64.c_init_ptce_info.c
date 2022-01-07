
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ptce_stride; int * ptce_count; int ptce_base; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_5__ {int * stride; int * count; int base; int member_0; } ;
typedef TYPE_2__ ia64_ptce_info_t ;


 int ia64_get_ptce (TYPE_2__*) ;

__attribute__((used)) static void init_ptce_info(struct kvm_vcpu *vcpu)
{
 ia64_ptce_info_t ptce = {0};

 ia64_get_ptce(&ptce);
 vcpu->arch.ptce_base = ptce.base;
 vcpu->arch.ptce_count[0] = ptce.count[0];
 vcpu->arch.ptce_count[1] = ptce.count[1];
 vcpu->arch.ptce_stride[0] = ptce.stride[0];
 vcpu->arch.ptce_stride[1] = ptce.stride[1];
}
