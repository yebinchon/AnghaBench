
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;



__attribute__((used)) static int
hpsim_set_affinity_noop(unsigned int a, const struct cpumask *b)
{
 return 0;
}
