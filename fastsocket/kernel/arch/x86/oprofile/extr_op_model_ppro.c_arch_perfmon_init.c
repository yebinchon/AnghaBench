
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oprofile_operations {int dummy; } ;


 int arch_perfmon_setup_counters () ;

__attribute__((used)) static int arch_perfmon_init(struct oprofile_operations *ignore)
{
 arch_perfmon_setup_counters();
 return 0;
}
