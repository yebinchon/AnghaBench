
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* uint64_t ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_10__ {void* val; } ;
struct TYPE_9__ {void* val; } ;
struct TYPE_12__ {TYPE_3__ data; TYPE_2__ addr; } ;
struct TYPE_11__ {TYPE_5__ ipi_data; } ;
struct exit_ctl_data {TYPE_4__ u; int exit_reason; } ;
struct TYPE_8__ {struct exit_ctl_data exit_data; } ;
struct TYPE_13__ {TYPE_1__ arch; } ;


 int EXIT_REASON_IPI ;
 TYPE_6__* current_vcpu ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int vmm_transition (TYPE_6__*) ;

__attribute__((used)) static void vlsapic_write_ipi(struct kvm_vcpu *vcpu,
     uint64_t addr, uint64_t data)
{
 struct exit_ctl_data *p = &current_vcpu->arch.exit_data;
 unsigned long psr;

 local_irq_save(psr);

 p->exit_reason = EXIT_REASON_IPI;
 p->u.ipi_data.addr.val = addr;
 p->u.ipi_data.data.val = data;
 vmm_transition(current_vcpu);

 local_irq_restore(psr);

}
