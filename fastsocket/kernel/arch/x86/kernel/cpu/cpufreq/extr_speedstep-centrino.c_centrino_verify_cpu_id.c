
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {scalar_t__ x86; scalar_t__ x86_model; scalar_t__ x86_mask; } ;
struct cpu_id {scalar_t__ x86; scalar_t__ x86_model; scalar_t__ x86_mask; } ;



__attribute__((used)) static int centrino_verify_cpu_id(const struct cpuinfo_x86 *c,
      const struct cpu_id *x)
{
 if ((c->x86 == x->x86) &&
     (c->x86_model == x->x86_model) &&
     (c->x86_mask == x->x86_mask))
  return 1;
 return 0;
}
