
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long u64 ;


 scalar_t__ ACPI_PM_OVRRUN ;
 long long PMTMR_TICKS_PER_SEC ;
 unsigned long ULONG_MAX ;
 int do_div (long long,long long) ;

__attribute__((used)) static unsigned long calc_pmtimer_ref(u64 deltatsc, u64 pm1, u64 pm2)
{
 u64 tmp;

 if (!pm1 && !pm2)
  return ULONG_MAX;

 if (pm2 < pm1)
  pm2 += (u64)ACPI_PM_OVRRUN;
 pm2 -= pm1;
 tmp = pm2 * 1000000000LL;
 do_div(tmp, PMTMR_TICKS_PER_SEC);
 do_div(deltatsc, tmp);

 return (unsigned long) deltatsc;
}
