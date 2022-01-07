
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int dummy; } ;


 int dprintk (char*) ;
 int speedstep_smi_ownership () ;

__attribute__((used)) static int speedstep_resume(struct cpufreq_policy *policy)
{
 int result = speedstep_smi_ownership();

 if (result)
  dprintk("fails in re-aquiring ownership of a SMI interface.\n");

 return result;
}
