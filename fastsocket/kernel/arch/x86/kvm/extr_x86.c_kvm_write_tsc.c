
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct msr_data {int data; } ;
struct TYPE_6__ {scalar_t__ tsc_timestamp; } ;
struct TYPE_7__ {int last_tsc_write; int last_tsc_nsec; TYPE_2__ hv_clock; } ;
struct kvm_vcpu {TYPE_3__ arch; struct kvm* kvm; } ;
struct TYPE_5__ {int last_tsc_nsec; int last_tsc_write; int last_tsc_offset; int tsc_write_lock; } ;
struct kvm {TYPE_1__ arch; } ;
typedef int s64 ;
struct TYPE_8__ {int (* compute_tsc_offset ) (struct kvm_vcpu*,int) ;int (* write_tsc_offset ) (struct kvm_vcpu*,int) ;} ;


 int NSEC_PER_SEC ;
 int check_tsc_unstable () ;
 int get_kernel_ns () ;
 TYPE_4__* kvm_x86_ops ;
 int nsec_to_cycles (struct kvm_vcpu*,int) ;
 int pr_debug (char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct kvm_vcpu*,int) ;
 int stub2 (struct kvm_vcpu*,int) ;

void kvm_write_tsc(struct kvm_vcpu *vcpu, struct msr_data *msr)
{
 struct kvm *kvm = vcpu->kvm;
 u64 offset, ns, elapsed;
 unsigned long flags;
 s64 sdiff;
 u64 delta;
 u64 data = msr->data;

 spin_lock_irqsave(&kvm->arch.tsc_write_lock, flags);
 offset = kvm_x86_ops->compute_tsc_offset(vcpu, data);
 ns = get_kernel_ns();
 elapsed = ns - kvm->arch.last_tsc_nsec;
 sdiff = data - kvm->arch.last_tsc_write;
 if (sdiff < 0)
  sdiff = -sdiff;
 delta = nsec_to_cycles(vcpu, elapsed);
 sdiff -= delta;
 if (sdiff < 0)
  sdiff = -sdiff;
 if (sdiff < nsec_to_cycles(vcpu, 1 * NSEC_PER_SEC) ) {
  if (!check_tsc_unstable()) {
   offset = kvm->arch.last_tsc_offset;
   pr_debug("kvm: matched tsc offset for %llu\n", data);
  } else {

   pr_debug("kvm: matched write on unstable tsc\n");
  }
 } else {
  kvm->arch.last_tsc_nsec = ns;
  kvm->arch.last_tsc_write = data;
  kvm->arch.last_tsc_offset = offset;
 }
 kvm_x86_ops->write_tsc_offset(vcpu, offset);
 spin_unlock_irqrestore(&kvm->arch.tsc_write_lock, flags);


 vcpu->arch.hv_clock.tsc_timestamp = 0;
 vcpu->arch.last_tsc_write = data;
 vcpu->arch.last_tsc_nsec = ns;
}
