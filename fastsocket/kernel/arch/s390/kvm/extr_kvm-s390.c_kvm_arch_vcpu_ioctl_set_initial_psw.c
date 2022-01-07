
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_3__* run; TYPE_2__ arch; } ;
struct TYPE_9__ {int addr; int mask; } ;
typedef TYPE_4__ psw_t ;
struct TYPE_8__ {int psw_addr; int psw_mask; } ;
struct TYPE_6__ {int cpuflags; } ;


 int CPUSTAT_RUNNING ;
 int EBUSY ;
 int atomic_read (int *) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

__attribute__((used)) static int kvm_arch_vcpu_ioctl_set_initial_psw(struct kvm_vcpu *vcpu, psw_t psw)
{
 int rc = 0;

 vcpu_load(vcpu);
 if (atomic_read(&vcpu->arch.sie_block->cpuflags) & CPUSTAT_RUNNING)
  rc = -EBUSY;
 else {
  vcpu->run->psw_mask = psw.mask;
  vcpu->run->psw_addr = psw.addr;
 }
 vcpu_put(vcpu);
 return rc;
}
