
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;


 int FREE_MODULE (void*) ;

void module_free(struct module *mod, void *module_region)
{
 FREE_MODULE(module_region);
}
