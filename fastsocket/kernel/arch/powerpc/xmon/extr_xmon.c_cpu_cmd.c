
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long NR_CPUS ;
 int barrier () ;
 scalar_t__ cpu_isset (unsigned long,int ) ;
 int cpus_in_xmon ;
 int mb () ;
 int printf (char*,...) ;
 int scanhex (unsigned long*) ;
 unsigned long smp_processor_id () ;
 scalar_t__ test_and_set_bit (int ,scalar_t__*) ;
 unsigned long xmon_owner ;
 scalar_t__ xmon_taken ;

__attribute__((used)) static int cpu_cmd(void)
{
 return 0;

}
