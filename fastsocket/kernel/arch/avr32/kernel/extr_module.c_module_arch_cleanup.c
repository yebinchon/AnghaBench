
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;


 int module_bug_cleanup (struct module*) ;

void module_arch_cleanup(struct module *module)
{
 module_bug_cleanup(module);
}
