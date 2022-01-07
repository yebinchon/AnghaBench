
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct kvm_vcpu {int dummy; } ;
struct descriptor_table {unsigned long member_1; int member_0; } ;
struct TYPE_2__ {int (* set_idt ) (struct kvm_vcpu*,struct descriptor_table*) ;} ;


 TYPE_1__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,struct descriptor_table*) ;

void realmode_lidt(struct kvm_vcpu *vcpu, u16 limit, unsigned long base)
{
 struct descriptor_table dt = { limit, base };

 kvm_x86_ops->set_idt(vcpu, &dt);
}
