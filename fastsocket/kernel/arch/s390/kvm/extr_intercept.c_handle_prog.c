
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* sie_block; } ;
struct TYPE_4__ {int exit_program_interruption; } ;
struct kvm_vcpu {TYPE_3__ arch; TYPE_1__ stat; } ;
struct TYPE_5__ {int iprcc; } ;


 int kvm_s390_inject_program_int (struct kvm_vcpu*,int ) ;

__attribute__((used)) static int handle_prog(struct kvm_vcpu *vcpu)
{
 vcpu->stat.exit_program_interruption++;
 return kvm_s390_inject_program_int(vcpu, vcpu->arch.sie_block->iprcc);
}
