
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* sie_block; int * guest_gprs; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {char* icptcode; int gg14; int cpuflags; } ;


 int PGM_ADDRESSING ;
 int TIF_MCCK_PENDING ;
 int VCPU_EVENT (struct kvm_vcpu*,int,char*,char*) ;
 char* atomic_read (int *) ;
 int kvm_guest_enter () ;
 int kvm_guest_exit () ;
 int kvm_s390_deliver_pending_interrupts (struct kvm_vcpu*) ;
 int kvm_s390_inject_program_int (struct kvm_vcpu*,int ) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int memcpy (int *,int *,int) ;
 scalar_t__ need_resched () ;
 int s390_handle_mcck () ;
 int schedule () ;
 scalar_t__ sie64a (TYPE_2__*,int *) ;
 scalar_t__ test_thread_flag (int ) ;

__attribute__((used)) static void __vcpu_run(struct kvm_vcpu *vcpu)
{
 memcpy(&vcpu->arch.sie_block->gg14, &vcpu->arch.guest_gprs[14], 16);

 if (need_resched())
  schedule();

 if (test_thread_flag(TIF_MCCK_PENDING))
  s390_handle_mcck();

 kvm_s390_deliver_pending_interrupts(vcpu);

 vcpu->arch.sie_block->icptcode = 0;
 local_irq_disable();
 kvm_guest_enter();
 local_irq_enable();
 VCPU_EVENT(vcpu, 6, "entering sie flags %x",
     atomic_read(&vcpu->arch.sie_block->cpuflags));
 if (sie64a(vcpu->arch.sie_block, vcpu->arch.guest_gprs)) {
  VCPU_EVENT(vcpu, 3, "%s", "fault in sie instruction");
  kvm_s390_inject_program_int(vcpu, PGM_ADDRESSING);
 }
 VCPU_EVENT(vcpu, 6, "exit sie icptcode %d",
     vcpu->arch.sie_block->icptcode);
 local_irq_disable();
 kvm_guest_exit();
 local_irq_enable();

 memcpy(&vcpu->arch.guest_gprs[14], &vcpu->arch.sie_block->gg14, 16);
}
