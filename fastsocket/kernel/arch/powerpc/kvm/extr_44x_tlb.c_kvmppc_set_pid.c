
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct kvmppc_vcpu_44x {struct kvmppc_44x_shadow_ref* shadow_refs; } ;
struct kvmppc_44x_shadow_ref {scalar_t__ tid; } ;
struct TYPE_2__ {scalar_t__ pid; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int ARRAY_SIZE (struct kvmppc_44x_shadow_ref*) ;
 int kvmppc_44x_shadow_release (struct kvmppc_vcpu_44x*,int) ;
 struct kvmppc_vcpu_44x* to_44x (struct kvm_vcpu*) ;
 scalar_t__ unlikely (int) ;

void kvmppc_set_pid(struct kvm_vcpu *vcpu, u32 new_pid)
{
 struct kvmppc_vcpu_44x *vcpu_44x = to_44x(vcpu);
 int i;

 if (unlikely(vcpu->arch.pid == new_pid))
  return;

 vcpu->arch.pid = new_pid;





 for (i = 0; i < ARRAY_SIZE(vcpu_44x->shadow_refs); i++) {
  struct kvmppc_44x_shadow_ref *ref = &vcpu_44x->shadow_refs[i];

  if (ref->tid == 0)
   kvmppc_44x_shadow_release(vcpu_44x, i);
 }
}
