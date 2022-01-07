
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int pending; int soft; int nr; } ;
struct TYPE_4__ {TYPE_1__ interrupt; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;



__attribute__((used)) static inline void kvm_queue_interrupt(struct kvm_vcpu *vcpu, u8 vector,
 bool soft)
{
 vcpu->arch.interrupt.pending = 1;
 vcpu->arch.interrupt.soft = soft;
 vcpu->arch.interrupt.nr = vector;
}
