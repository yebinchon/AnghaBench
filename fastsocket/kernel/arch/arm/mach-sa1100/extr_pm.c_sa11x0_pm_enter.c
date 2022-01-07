
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;


 int GAFR ;
 unsigned long GPCR ;
 int GPDR ;
 unsigned long GPLR ;
 unsigned long GPSR ;
 int ICCR ;
 scalar_t__ ICLR ;
 scalar_t__ ICMR ;
 int PPAR ;
 int PPDR ;
 int PPSR ;
 int PSDR ;
 scalar_t__ PSPR ;
 int PSSR ;
 int PSSR_PH ;
 int RCSR ;
 int RCSR_HWR ;
 int RCSR_SMR ;
 int RCSR_SWR ;
 int RCSR_WDR ;
 int RESTORE (int ) ;
 int SAVE (int ) ;
 int SLEEP_SAVE_COUNT ;
 int Ser1SDCR0 ;
 int cpu_init () ;
 int sa1100_cpu_resume ;
 int sa1100_cpu_suspend () ;
 scalar_t__ virt_to_phys (int ) ;

__attribute__((used)) static int sa11x0_pm_enter(suspend_state_t state)
{
 unsigned long gpio, sleep_save[SLEEP_SAVE_COUNT];

 gpio = GPLR;


 SAVE(GPDR);
 SAVE(GAFR);

 SAVE(PPDR);
 SAVE(PPSR);
 SAVE(PPAR);
 SAVE(PSDR);

 SAVE(Ser1SDCR0);


 RCSR = RCSR_HWR | RCSR_SWR | RCSR_WDR | RCSR_SMR;


 PSPR = virt_to_phys(sa1100_cpu_resume);


 sa1100_cpu_suspend();

 cpu_init();




 PSPR = 0;





 ICLR = 0;
 ICCR = 1;
 ICMR = 0;


 RESTORE(GPDR);
 RESTORE(GAFR);

 RESTORE(PPDR);
 RESTORE(PPSR);
 RESTORE(PPAR);
 RESTORE(PSDR);

 RESTORE(Ser1SDCR0);

 GPSR = gpio;
 GPCR = ~gpio;




 PSSR = PSSR_PH;

 return 0;
}
