
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int* msrpm; int vmcb_msrpm; } ;
struct vcpu_svm {int* msrpm; TYPE_3__ nested; TYPE_2__* vmcb; } ;
struct TYPE_4__ {int msrpm_base_pa; } ;
struct TYPE_5__ {TYPE_1__ control; } ;


 int KM_USER0 ;
 int MSRPM_ALLOC_ORDER ;
 int PAGE_SIZE ;
 int __pa (int*) ;
 int* nested_svm_map (struct vcpu_svm*,int ,int ) ;
 int nested_svm_unmap (int*,int ) ;

__attribute__((used)) static bool nested_svm_vmrun_msrpm(struct vcpu_svm *svm)
{
 u32 *nested_msrpm;
 int i;

 nested_msrpm = nested_svm_map(svm, svm->nested.vmcb_msrpm, KM_USER0);
 if (!nested_msrpm)
  return 0;

 for (i=0; i< PAGE_SIZE * (1 << MSRPM_ALLOC_ORDER) / 4; i++)
  svm->nested.msrpm[i] = svm->msrpm[i] | nested_msrpm[i];

 svm->vmcb->control.msrpm_base_pa = __pa(svm->nested.msrpm);

 nested_svm_unmap(nested_msrpm, KM_USER0);

 return 1;
}
