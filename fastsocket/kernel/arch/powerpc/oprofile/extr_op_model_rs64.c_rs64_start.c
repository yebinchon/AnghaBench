
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct op_counter_config {int event; scalar_t__ enabled; } ;


 unsigned int MMCR0_FC ;
 int MSR_PMM ;
 int SPRN_MMCR0 ;
 int classic_ctr_write (int,int ) ;
 int ctrl_write (int,int ) ;
 int dbg (char*,int ,unsigned int) ;
 int mfmsr () ;
 unsigned int mfspr (int ) ;
 int mtmsrd (int) ;
 int mtspr (int ,unsigned int) ;
 int num_counters ;
 int * reset_value ;
 int smp_processor_id () ;

__attribute__((used)) static int rs64_start(struct op_counter_config *ctr)
{
 int i;
 unsigned int mmcr0;


 mtmsrd(mfmsr() | MSR_PMM);

 for (i = 0; i < num_counters; ++i) {
  if (ctr[i].enabled) {
   classic_ctr_write(i, reset_value[i]);
   ctrl_write(i, ctr[i].event);
  } else {
   classic_ctr_write(i, 0);
  }
 }

 mmcr0 = mfspr(SPRN_MMCR0);






 mmcr0 &= ~MMCR0_FC;
 mtspr(SPRN_MMCR0, mmcr0);

 dbg("start on cpu %d, mmcr0 %x\n", smp_processor_id(), mmcr0);
 return 0;
}
