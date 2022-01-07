
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int version; } ;
struct TYPE_7__ {int function; } ;
struct TYPE_6__ {TYPE_4__ cpu_id; TYPE_3__ ckc_timer; int tasklet; TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; int requests; } ;
struct TYPE_5__ {int ecb; int eca; int fac; int cpuflags; } ;


 int CLOCK_REALTIME ;
 int CPUSTAT_ZARCH ;
 int HRTIMER_MODE_ABS ;
 int KVM_REQ_MMU_RELOAD ;
 int atomic_set (int *,int ) ;
 scalar_t__ facilities ;
 int get_cpu_id (TYPE_4__*) ;
 int hrtimer_init (TYPE_3__*,int ,int ) ;
 int kvm_s390_idle_wakeup ;
 int kvm_s390_tasklet ;
 int set_bit (int ,int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

int kvm_arch_vcpu_setup(struct kvm_vcpu *vcpu)
{
 atomic_set(&vcpu->arch.sie_block->cpuflags, CPUSTAT_ZARCH);
 set_bit(KVM_REQ_MMU_RELOAD, &vcpu->requests);
 vcpu->arch.sie_block->ecb = 2;
 vcpu->arch.sie_block->eca = 0xC1002001U;
 vcpu->arch.sie_block->fac = (int) (long) facilities;
 hrtimer_init(&vcpu->arch.ckc_timer, CLOCK_REALTIME, HRTIMER_MODE_ABS);
 tasklet_init(&vcpu->arch.tasklet, kvm_s390_tasklet,
       (unsigned long) vcpu);
 vcpu->arch.ckc_timer.function = kvm_s390_idle_wakeup;
 get_cpu_id(&vcpu->arch.cpu_id);
 vcpu->arch.cpu_id.version = 0xff;
 return 0;
}
