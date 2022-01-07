
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct op_counter_config {scalar_t__ enabled; } ;
struct TYPE_2__ {int num_pmcs; } ;


 unsigned int MMCR0_FC ;
 unsigned int MMCR0_PMAO ;
 int MSR_PMM ;
 int SPRN_MMCR0 ;
 int classic_ctr_write (int,int ) ;
 TYPE_1__* cur_cpu_spec ;
 int dbg (char*,int ,unsigned int) ;
 int mfmsr () ;
 unsigned int mfspr (int ) ;
 int mtmsrd (int) ;
 int mtspr (int ,unsigned int) ;
 int oprofile_running ;
 int * reset_value ;
 int smp_processor_id () ;

__attribute__((used)) static int power4_start(struct op_counter_config *ctr)
{
 int i;
 unsigned int mmcr0;


 mtmsrd(mfmsr() | MSR_PMM);

 for (i = 0; i < cur_cpu_spec->num_pmcs; ++i) {
  if (ctr[i].enabled) {
   classic_ctr_write(i, reset_value[i]);
  } else {
   classic_ctr_write(i, 0);
  }
 }

 mmcr0 = mfspr(SPRN_MMCR0);





 mmcr0 &= ~MMCR0_PMAO;






 mmcr0 &= ~MMCR0_FC;
 mtspr(SPRN_MMCR0, mmcr0);

 oprofile_running = 1;

 dbg("start on cpu %d, mmcr0 %x\n", smp_processor_id(), mmcr0);
 return 0;
}
