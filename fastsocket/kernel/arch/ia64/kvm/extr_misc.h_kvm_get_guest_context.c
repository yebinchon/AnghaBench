
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union context {int dummy; } context ;
struct TYPE_2__ {union context guest; } ;
struct kvm_vcpu {int kvm; TYPE_1__ arch; } ;


 union context* to_guest (int ,union context*) ;

__attribute__((used)) static inline union context *kvm_get_guest_context(struct kvm_vcpu *vcpu)
{
 union context *ctx = &vcpu->arch.guest;
 return to_guest(vcpu->kvm, ctx);
}
