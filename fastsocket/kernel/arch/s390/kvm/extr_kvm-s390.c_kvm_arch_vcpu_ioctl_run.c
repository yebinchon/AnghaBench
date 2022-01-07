
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_16__ {int exit_userspace; } ;
struct TYPE_15__ {TYPE_6__* sie_block; } ;
struct kvm_vcpu {size_t vcpu_id; TYPE_8__ stat; scalar_t__ sigset_active; TYPE_7__ arch; TYPE_3__* kvm; int sigset; scalar_t__ requests; } ;
struct TYPE_12__ {int ipb; int ipa; int icptcode; } ;
struct kvm_run {int exit_reason; int psw_addr; int psw_mask; TYPE_4__ s390_sieic; } ;
typedef int sigset_t ;
struct TYPE_13__ {int addr; int mask; } ;
struct TYPE_14__ {TYPE_5__ gpsw; int ipb; int ipa; int icptcode; int cpuflags; int gmslm; } ;
struct TYPE_9__ {int ** local_int; } ;
struct TYPE_10__ {TYPE_1__ float_int; } ;
struct TYPE_11__ {TYPE_2__ arch; } ;


 int BUG () ;
 int BUG_ON (int ) ;
 int CPUSTAT_RUNNING ;
 int EINTR ;
 int EINVAL ;
 int ENOTSUPP ;
 int EREMOTE ;




 int KVM_REQ_MMU_RELOAD ;
 int SIE_INTERCEPT_RERUNVCPU ;
 int SIG_SETMASK ;
 int VCPU_EVENT (struct kvm_vcpu*,int,char*,char*) ;
 int __vcpu_run (struct kvm_vcpu*) ;
 int atomic_set_mask (int ,int *) ;
 int current ;
 int kvm_handle_sie_intercept (struct kvm_vcpu*) ;
 int kvm_s390_vcpu_set_mem (struct kvm_vcpu*) ;
 int might_fault () ;
 scalar_t__ signal_pending (int ) ;
 int sigprocmask (int ,int *,int *) ;
 scalar_t__ test_and_clear_bit (int ,scalar_t__*) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
{
 int rc;
 sigset_t sigsaved;

 vcpu_load(vcpu);

rerun_vcpu:
 if (vcpu->requests)
  if (test_and_clear_bit(KVM_REQ_MMU_RELOAD, &vcpu->requests))
   kvm_s390_vcpu_set_mem(vcpu);


 if (!vcpu->arch.sie_block->gmslm) {
  vcpu_put(vcpu);
  VCPU_EVENT(vcpu, 3, "%s", "no memory registered to run vcpu");
  return -EINVAL;
 }

 if (vcpu->sigset_active)
  sigprocmask(SIG_SETMASK, &vcpu->sigset, &sigsaved);

 atomic_set_mask(CPUSTAT_RUNNING, &vcpu->arch.sie_block->cpuflags);

 BUG_ON(vcpu->kvm->arch.float_int.local_int[vcpu->vcpu_id] == ((void*)0));

 switch (kvm_run->exit_reason) {
 case 129:
 case 128:
 case 131:
 case 130:
  break;
 default:
  BUG();
 }

 vcpu->arch.sie_block->gpsw.mask = kvm_run->psw_mask;
 vcpu->arch.sie_block->gpsw.addr = kvm_run->psw_addr;

 might_fault();

 do {
  __vcpu_run(vcpu);
  rc = kvm_handle_sie_intercept(vcpu);
 } while (!signal_pending(current) && !rc);

 if (rc == SIE_INTERCEPT_RERUNVCPU)
  goto rerun_vcpu;

 if (signal_pending(current) && !rc) {
  kvm_run->exit_reason = 131;
  rc = -EINTR;
 }

 if (rc == -ENOTSUPP) {

  kvm_run->exit_reason = 129;
  kvm_run->s390_sieic.icptcode = vcpu->arch.sie_block->icptcode;
  kvm_run->s390_sieic.ipa = vcpu->arch.sie_block->ipa;
  kvm_run->s390_sieic.ipb = vcpu->arch.sie_block->ipb;
  rc = 0;
 }

 if (rc == -EREMOTE) {


  rc = 0;
 }

 kvm_run->psw_mask = vcpu->arch.sie_block->gpsw.mask;
 kvm_run->psw_addr = vcpu->arch.sie_block->gpsw.addr;

 if (vcpu->sigset_active)
  sigprocmask(SIG_SETMASK, &sigsaved, ((void*)0));

 vcpu_put(vcpu);

 vcpu->stat.exit_userspace++;
 return rc;
}
