
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;


 int unregister_unwind_tables (struct module*) ;

void
module_arch_cleanup(struct module *mod)
{
 unregister_unwind_tables(mod);
}
