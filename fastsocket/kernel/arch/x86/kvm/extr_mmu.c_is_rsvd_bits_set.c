
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int** rsvd_bits_mask; } ;
struct TYPE_4__ {TYPE_1__ mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;



__attribute__((used)) static bool is_rsvd_bits_set(struct kvm_vcpu *vcpu, u64 gpte, int level)
{
 int bit7;

 bit7 = (gpte >> 7) & 1;
 return (gpte & vcpu->arch.mmu.rsvd_bits_mask[bit7][level-1]) != 0;
}
