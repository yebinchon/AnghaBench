
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ core_unw_table; scalar_t__ init_unw_table; } ;
struct module {TYPE_1__ arch; } ;


 int unw_remove_unwind_table (scalar_t__) ;

void
module_arch_cleanup (struct module *mod)
{
 if (mod->arch.init_unw_table)
  unw_remove_unwind_table(mod->arch.init_unw_table);
 if (mod->arch.core_unw_table)
  unw_remove_unwind_table(mod->arch.core_unw_table);
}
