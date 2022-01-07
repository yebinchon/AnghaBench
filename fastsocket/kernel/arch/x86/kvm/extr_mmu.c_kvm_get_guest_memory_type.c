
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int mtrr_state; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef int gfn_t ;


 int MTRR_TYPE_WRBACK ;
 int PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int get_mtrr_type (int *,int,scalar_t__) ;

u8 kvm_get_guest_memory_type(struct kvm_vcpu *vcpu, gfn_t gfn)
{
 u8 mtrr;

 mtrr = get_mtrr_type(&vcpu->arch.mtrr_state, gfn << PAGE_SHIFT,
        (gfn << PAGE_SHIFT) + PAGE_SIZE);
 if (mtrr == 0xfe || mtrr == 0xff)
  mtrr = MTRR_TYPE_WRBACK;
 return mtrr;
}
