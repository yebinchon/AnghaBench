
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int cpu; int requests; int wq; } ;


 int KVM_REQ_KICK ;
 scalar_t__ cpu_online (int) ;
 int get_cpu () ;
 unsigned int nr_cpu_ids ;
 int put_cpu () ;
 int smp_send_reschedule (int) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_interruptible (int *) ;

void kvm_vcpu_kick(struct kvm_vcpu *vcpu)
{
 int me;
 int cpu = vcpu->cpu;

 if (waitqueue_active(&vcpu->wq))
  wake_up_interruptible(&vcpu->wq);

 me = get_cpu();
 if (cpu != me && (unsigned) cpu < nr_cpu_ids && cpu_online(cpu))
  if (!test_and_set_bit(KVM_REQ_KICK, &vcpu->requests))
   smp_send_reschedule(cpu);
 put_cpu();
}
