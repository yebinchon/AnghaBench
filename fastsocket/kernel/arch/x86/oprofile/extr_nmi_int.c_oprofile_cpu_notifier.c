
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;





 int NOTIFY_DONE ;
 int nmi_cpu_down ;
 int nmi_cpu_up ;
 int smp_call_function_single (int,int ,int *,int) ;

__attribute__((used)) static int oprofile_cpu_notifier(struct notifier_block *b, unsigned long action,
     void *data)
{
 int cpu = (unsigned long)data;
 switch (action) {
 case 130:
 case 128:
  smp_call_function_single(cpu, nmi_cpu_up, ((void*)0), 0);
  break;
 case 129:
  smp_call_function_single(cpu, nmi_cpu_down, ((void*)0), 1);
  break;
 }
 return NOTIFY_DONE;
}
