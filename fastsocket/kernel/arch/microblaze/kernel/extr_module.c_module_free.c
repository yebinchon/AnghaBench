
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int name; } ;


 int pr_debug (char*,int ,unsigned long) ;
 int vfree (void*) ;

void module_free(struct module *module, void *region)
{
 pr_debug("module_free(%s,%08lx)\n", module->name,
     (unsigned long)region);
 vfree(region);
}
