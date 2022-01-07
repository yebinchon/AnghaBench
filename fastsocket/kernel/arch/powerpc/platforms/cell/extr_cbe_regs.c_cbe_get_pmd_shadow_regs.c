
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct cbe_pmd_shadow_regs {int dummy; } ;
struct cbe_regs_map {struct cbe_pmd_shadow_regs pmd_shadow_regs; } ;


 struct cbe_regs_map* cbe_find_map (struct device_node*) ;

struct cbe_pmd_shadow_regs *cbe_get_pmd_shadow_regs(struct device_node *np)
{
 struct cbe_regs_map *map = cbe_find_map(np);
 if (map == ((void*)0))
  return ((void*)0);
 return &map->pmd_shadow_regs;
}
