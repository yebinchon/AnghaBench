
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cpu_state_vals { ____Placeholder_cpu_state_vals } cpu_state_vals ;


 int per_cpu (int ,int) ;
 int preferred_offline_state ;

enum cpu_state_vals get_preferred_offline_state(int cpu)
{
 return per_cpu(preferred_offline_state, cpu);
}
