
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MMCR0_FC ;
 int SPRN_MMCR0 ;
 int dbg (char*,int ,unsigned int) ;
 int mb () ;
 unsigned int mfspr (int ) ;
 int mtspr (int ,unsigned int) ;
 int smp_processor_id () ;

__attribute__((used)) static void rs64_stop(void)
{
 unsigned int mmcr0;


 mmcr0 = mfspr(SPRN_MMCR0);
 mmcr0 |= MMCR0_FC;
 mtspr(SPRN_MMCR0, mmcr0);

 dbg("stop on cpu %d, mmcr0 %x\n", smp_processor_id(), mmcr0);

 mb();
}
