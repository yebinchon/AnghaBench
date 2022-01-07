
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;


 int vfree (void*) ;

void module_free(struct module *module, void *region)
{
 vfree(region);
}
