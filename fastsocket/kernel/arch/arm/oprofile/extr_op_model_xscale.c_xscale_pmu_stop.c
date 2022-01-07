
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PMU_ENABLE ;
 int XSCALE_PMU_IRQ ;
 int free_irq (int ,int ) ;
 int read_pmnc () ;
 int results ;
 int write_pmnc (int ) ;

__attribute__((used)) static void xscale_pmu_stop(void)
{
 u32 pmnc = read_pmnc();

 pmnc &= ~PMU_ENABLE;
 write_pmnc(pmnc);

 free_irq(XSCALE_PMU_IRQ, results);
}
