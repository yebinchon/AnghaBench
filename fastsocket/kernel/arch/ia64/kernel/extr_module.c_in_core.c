
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct module {scalar_t__ core_size; scalar_t__ module_core; } ;



__attribute__((used)) static inline int
in_core (const struct module *mod, uint64_t addr)
{
 return addr - (uint64_t) mod->module_core < mod->core_size;
}
