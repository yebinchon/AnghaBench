
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ACPI_PM_MASK ;
 int cpu_relax () ;
 int inl (int ) ;
 int pmtmr_ioport ;

__attribute__((used)) static unsigned pmtimer_wait_tick(void)
{
 u32 a, b;
 for (a = b = inl(pmtmr_ioport) & ACPI_PM_MASK;
      a == b;
      b = inl(pmtmr_ioport) & ACPI_PM_MASK)
  cpu_relax();
 return b;
}
