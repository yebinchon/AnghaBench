
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int val; } ;
struct TYPE_6__ {TYPE_1__ pta; int num; } ;
struct TYPE_5__ {TYPE_3__ vhpt; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int VHPT_NUM_ENTRIES ;
 int VHPT_SHIFT ;
 int ia64_set_pta (int ) ;
 int thash_init (TYPE_3__*,int ) ;

void kvm_init_vhpt(struct kvm_vcpu *v)
{
 v->arch.vhpt.num = VHPT_NUM_ENTRIES;
 thash_init(&v->arch.vhpt, VHPT_SHIFT);
 ia64_set_pta(v->arch.vhpt.pta.val);

}
