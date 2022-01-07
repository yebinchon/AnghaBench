
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num; } ;
struct TYPE_3__ {TYPE_2__ vtlb; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int VTLB_NUM_ENTRIES ;
 int VTLB_SHIFT ;
 int thash_init (TYPE_2__*,int ) ;

void kvm_init_vtlb(struct kvm_vcpu *v)
{
 v->arch.vtlb.num = VTLB_NUM_ENTRIES;
 thash_init(&v->arch.vtlb, VTLB_SHIFT);
}
