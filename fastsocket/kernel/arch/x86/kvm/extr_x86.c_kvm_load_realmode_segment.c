
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_segment {int base; int limit; int selector; int type; int present; int dpl; int s; int unusable; int avl; int g; int l; int db; } ;
struct TYPE_2__ {int (* set_segment ) (struct kvm_vcpu*,struct kvm_segment*,int) ;} ;


 int X86EMUL_CONTINUE ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,struct kvm_segment*,int) ;

__attribute__((used)) static int kvm_load_realmode_segment(struct kvm_vcpu *vcpu, u16 selector, int seg)
{
 struct kvm_segment segvar = {
  .base = selector << 4,
  .limit = 0xffff,
  .selector = selector,
  .type = 3,
  .present = 1,
  .dpl = 3,
  .db = 0,
  .s = 1,
  .l = 0,
  .g = 0,
  .avl = 0,
  .unusable = 0,
 };
 kvm_x86_ops->set_segment(vcpu, &segvar, seg);
 return X86EMUL_CONTINUE;
}
