
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpudata {int idle_mode; } ;



__attribute__((used)) static inline void intel_pstate_idle_mode(struct cpudata *cpu)
{
 cpu->idle_mode = 1;
}
