
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cbe_pmd_shadow_regs {int dummy; } ;
struct cbe_regs_map {struct cbe_pmd_shadow_regs pmd_shadow_regs; } ;
struct TYPE_2__ {struct cbe_regs_map* regs; } ;


 TYPE_1__* cbe_thread_map ;

struct cbe_pmd_shadow_regs *cbe_get_cpu_pmd_shadow_regs(int cpu)
{
 struct cbe_regs_map *map = cbe_thread_map[cpu].regs;
 if (map == ((void*)0))
  return ((void*)0);
 return &map->pmd_shadow_regs;
}
