
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int val; } ;
struct TYPE_6__ {TYPE_2__ pta; int num; } ;
struct TYPE_4__ {TYPE_3__ vhpt; TYPE_3__ vtlb; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int VHPT_NUM_ENTRIES ;
 int VHPT_SHIFT ;
 int VTLB_NUM_ENTRIES ;
 int VTLB_SHIFT ;
 int ia64_set_pta (int ) ;
 int thash_init (TYPE_3__*,int ) ;

__attribute__((used)) static void vcpu_do_resume(struct kvm_vcpu *vcpu)
{

 vcpu->arch.vhpt.num = VHPT_NUM_ENTRIES;
 thash_init(&vcpu->arch.vhpt, VHPT_SHIFT);
 vcpu->arch.vtlb.num = VTLB_NUM_ENTRIES;
 thash_init(&vcpu->arch.vtlb, VTLB_SHIFT);

 ia64_set_pta(vcpu->arch.vhpt.pta.val);
}
