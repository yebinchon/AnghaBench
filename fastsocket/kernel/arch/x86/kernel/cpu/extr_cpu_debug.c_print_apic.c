
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int APIC_ARBPRI ;
 int APIC_DFR ;
 int APIC_ECTRL ;
 int APIC_EFEAT ;
 int APIC_EILVTn (unsigned int) ;
 int APIC_ESR ;
 int APIC_ICR ;
 int APIC_ICR2 ;
 int APIC_ID ;
 int APIC_ISR ;
 int APIC_LDR ;
 int APIC_LVR ;
 int APIC_LVT0 ;
 int APIC_LVT1 ;
 int APIC_LVTERR ;
 int APIC_LVTPC ;
 int APIC_LVTT ;
 int APIC_LVTTHMR ;
 int APIC_PROCPRI ;
 int APIC_SPIV ;
 int APIC_TASKPRI ;
 int APIC_TDCR ;
 int APIC_TMCCT ;
 int APIC_TMICT ;
 int X86_FEATURE_EXTAPIC ;
 int apic_read (int ) ;
 scalar_t__ boot_cpu_has (int ) ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static void print_apic(void *arg)
{
 struct seq_file *seq = arg;
 seq_printf(seq, "\n MSR\t:\n");
}
