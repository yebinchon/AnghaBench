
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct die_args {int dummy; } ;


 int cpu_emergency_vmxoff () ;

__attribute__((used)) static void vmxoff_nmi(int cpu, struct die_args *args)
{
 cpu_emergency_vmxoff();
}
