
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct op_counter_config {int dummy; } ;


 int CPU_FTR_MMCRA ;
 unsigned int MMCR0_FC ;
 unsigned int MMCR0_FCECE ;
 unsigned int MMCR0_FCM1 ;
 unsigned int MMCR0_PMC1CE ;
 unsigned int MMCR0_PMCjCE ;
 unsigned int MMCR0_PMXE ;
 int SPRN_MMCR0 ;
 int SPRN_MMCR1 ;
 int SPRN_MMCRA ;
 scalar_t__ cpu_has_feature (int ) ;
 int dbg (char*,int ,int ) ;
 int mfspr (int ) ;
 int mtspr (int ,unsigned int) ;
 int smp_processor_id () ;

__attribute__((used)) static int rs64_cpu_setup(struct op_counter_config *ctr)
{
 unsigned int mmcr0;


 mmcr0 = MMCR0_FC;
 mtspr(SPRN_MMCR0, mmcr0);


 mtspr(SPRN_MMCR1, 0);

 if (cpu_has_feature(CPU_FTR_MMCRA))
  mtspr(SPRN_MMCRA, 0);

 mmcr0 |= MMCR0_FCM1|MMCR0_PMXE|MMCR0_FCECE;

 mmcr0 |= MMCR0_PMC1CE|MMCR0_PMCjCE;
 mtspr(SPRN_MMCR0, mmcr0);

 dbg("setup on cpu %d, mmcr0 %lx\n", smp_processor_id(),
     mfspr(SPRN_MMCR0));
 dbg("setup on cpu %d, mmcr1 %lx\n", smp_processor_id(),
     mfspr(SPRN_MMCR1));

 return 0;
}
