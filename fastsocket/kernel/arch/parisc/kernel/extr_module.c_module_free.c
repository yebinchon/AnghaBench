
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * section; } ;
struct module {TYPE_1__ arch; } ;


 int kfree (int *) ;
 int vfree (void*) ;

void module_free(struct module *mod, void *module_region)
{
 kfree(mod->arch.section);
 mod->arch.section = ((void*)0);

 vfree(module_region);
}
