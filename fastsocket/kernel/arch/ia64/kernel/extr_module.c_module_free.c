
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * init_unw_table; } ;
struct module {void* module_init; TYPE_1__ arch; } ;


 int unw_remove_unwind_table (int *) ;
 int vfree (void*) ;

void
module_free (struct module *mod, void *module_region)
{
 if (mod && mod->arch.init_unw_table &&
     module_region == mod->module_init) {
  unw_remove_unwind_table(mod->arch.init_unw_table);
  mod->arch.init_unw_table = ((void*)0);
 }
 vfree(module_region);
}
