
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {void* module_core; int core_size; } ;



__attribute__((used)) static inline int in_core(struct module *me, void *loc)
{
 return (loc >= me->module_core &&
  loc <= (me->module_core + me->core_size));
}
