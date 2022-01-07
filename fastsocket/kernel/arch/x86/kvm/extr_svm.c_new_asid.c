
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vcpu_svm {TYPE_2__* vmcb; scalar_t__ asid_generation; } ;
struct svm_cpu_data {int next_asid; int max_asid; scalar_t__ asid_generation; } ;
struct TYPE_3__ {int asid; int tlb_ctl; } ;
struct TYPE_4__ {TYPE_1__ control; } ;


 int TLB_CONTROL_FLUSH_ALL_ASID ;
 int VMCB_ASID ;
 int mark_dirty (TYPE_2__*,int ) ;

__attribute__((used)) static void new_asid(struct vcpu_svm *svm, struct svm_cpu_data *svm_data)
{
 if (svm_data->next_asid > svm_data->max_asid) {
  ++svm_data->asid_generation;
  svm_data->next_asid = 1;
  svm->vmcb->control.tlb_ctl = TLB_CONTROL_FLUSH_ALL_ASID;
 }

 svm->asid_generation = svm_data->asid_generation;
 svm->vmcb->control.asid = svm_data->next_asid++;

 mark_dirty(svm->vmcb, VMCB_ASID);
}
