
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct module {int dummy; } ;
struct m68k_fixup_info {int type; scalar_t__ addr; } ;




 int m68k_memoffset ;
 int m68k_virt_to_node_shift ;

void module_fixup(struct module *mod, struct m68k_fixup_info *start,
    struct m68k_fixup_info *end)
{
 struct m68k_fixup_info *fixup;

 for (fixup = start; fixup < end; fixup++) {
  switch (fixup->type) {
  case 129:
   *(u32 *)fixup->addr = m68k_memoffset;
   break;
  case 128:
   *(u16 *)fixup->addr += m68k_virt_to_node_shift;
   break;
  }
 }
}
