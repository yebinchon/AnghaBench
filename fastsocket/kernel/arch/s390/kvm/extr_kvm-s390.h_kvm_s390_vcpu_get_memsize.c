
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {long gmslm; long gmsor; } ;


 long VIRTIODESCSPACE ;

__attribute__((used)) static inline long kvm_s390_vcpu_get_memsize(struct kvm_vcpu *vcpu)
{
 return vcpu->arch.sie_block->gmslm
  - vcpu->arch.sie_block->gmsor
  - VIRTIODESCSPACE + 1ul;
}
