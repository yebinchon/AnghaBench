
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ sparc_cpu_model ;
 scalar_t__ sun4d ;

__attribute__((used)) static char *cpu_mid_prop(void)
{
 if (sparc_cpu_model == sun4d)
  return "cpu-id";
 return "mid";
}
