
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_APIC_ibs () ;
 scalar_t__ ibs_caps ;

__attribute__((used)) static void op_amd_cpu_shutdown(void)
{
 if (ibs_caps)
  clear_APIC_ibs();
}
