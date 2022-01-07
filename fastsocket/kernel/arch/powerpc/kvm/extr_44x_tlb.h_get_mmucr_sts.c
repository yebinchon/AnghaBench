
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mmucr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;



__attribute__((used)) static inline unsigned int get_mmucr_sts(const struct kvm_vcpu *vcpu)
{
 return (vcpu->arch.mmucr >> 16) & 0x1;
}
