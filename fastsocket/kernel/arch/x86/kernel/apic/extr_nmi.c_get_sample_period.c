
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NMI_LOCAL_APIC ;
 unsigned long NSEC_PER_SEC ;
 int do_div (unsigned long,int ) ;
 int nmi_hz ;
 scalar_t__ nmi_watchdog ;

__attribute__((used)) static unsigned long get_sample_period(void)
{
 unsigned long count = NSEC_PER_SEC;
 if (nmi_watchdog == NMI_LOCAL_APIC)
  do_div(count, nmi_hz);

 return count;
}
