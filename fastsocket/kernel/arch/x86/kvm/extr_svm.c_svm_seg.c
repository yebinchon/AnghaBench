
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmcb_seg {int dummy; } ;
struct vmcb_save_area {struct vmcb_seg ldtr; struct vmcb_seg tr; struct vmcb_seg ss; struct vmcb_seg gs; struct vmcb_seg fs; struct vmcb_seg es; struct vmcb_seg ds; struct vmcb_seg cs; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {TYPE_1__* vmcb; } ;
struct TYPE_3__ {struct vmcb_save_area save; } ;


 int BUG () ;
 TYPE_2__* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static struct vmcb_seg *svm_seg(struct kvm_vcpu *vcpu, int seg)
{
 struct vmcb_save_area *save = &to_svm(vcpu)->vmcb->save;

 switch (seg) {
 case 135: return &save->cs;
 case 134: return &save->ds;
 case 133: return &save->es;
 case 132: return &save->fs;
 case 131: return &save->gs;
 case 129: return &save->ss;
 case 128: return &save->tr;
 case 130: return &save->ldtr;
 }
 BUG();
 return ((void*)0);
}
