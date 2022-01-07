
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct x86_emulate_ctxt {int interruptibility; int vcpu; } ;
struct TYPE_2__ {int (* get_interrupt_shadow ) (int ,int) ;} ;


 TYPE_1__* kvm_x86_ops ;
 int stub1 (int ,int) ;

__attribute__((used)) static void toggle_interruptibility(struct x86_emulate_ctxt *ctxt, u32 mask)
{
 u32 int_shadow = kvm_x86_ops->get_interrupt_shadow(ctxt->vcpu, mask);







 if (!(int_shadow & mask))
  ctxt->interruptibility = mask;
}
