
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;


 unsigned long AT91CAP9_PMC_UHP ;
 unsigned long AT91RM9200_PMC_UDP ;
 unsigned long AT91RM9200_PMC_UHP ;
 unsigned long AT91SAM926x_PMC_UDP ;
 unsigned long AT91SAM926x_PMC_UHP ;
 void* AT91_PMC_CSS ;
 void* AT91_PMC_CSS_SLOW ;
 int AT91_PMC_PCK0 ;
 int AT91_PMC_PCKR (int) ;
 int AT91_PMC_SCSR ;
 void* at91_sys_read (int ) ;
 scalar_t__ cpu_is_at91cap9 () ;
 scalar_t__ cpu_is_at91rm9200 () ;
 scalar_t__ cpu_is_at91sam9260 () ;
 scalar_t__ cpu_is_at91sam9261 () ;
 scalar_t__ cpu_is_at91sam9263 () ;
 scalar_t__ cpu_is_at91sam9g10 () ;
 scalar_t__ cpu_is_at91sam9g20 () ;
 int pr_err (char*,...) ;

__attribute__((used)) static int at91_pm_verify_clocks(void)
{
 unsigned long scsr;
 int i;

 scsr = at91_sys_read(AT91_PMC_SCSR);


 if (cpu_is_at91rm9200()) {
  if ((scsr & (AT91RM9200_PMC_UHP | AT91RM9200_PMC_UDP)) != 0) {
   pr_err("AT91: PM - Suspend-to-RAM with USB still active\n");
   return 0;
  }
 } else if (cpu_is_at91sam9260() || cpu_is_at91sam9261() || cpu_is_at91sam9263()
   || cpu_is_at91sam9g20() || cpu_is_at91sam9g10()) {
  if ((scsr & (AT91SAM926x_PMC_UHP | AT91SAM926x_PMC_UDP)) != 0) {
   pr_err("AT91: PM - Suspend-to-RAM with USB still active\n");
   return 0;
  }
 } else if (cpu_is_at91cap9()) {
  if ((scsr & AT91CAP9_PMC_UHP) != 0) {
   pr_err("AT91: PM - Suspend-to-RAM with USB still active\n");
   return 0;
  }
 }
 return 1;
}
