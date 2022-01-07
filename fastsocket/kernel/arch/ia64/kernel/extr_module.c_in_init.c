
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct module {scalar_t__ init_size; scalar_t__ module_init; } ;



__attribute__((used)) static inline int
in_init (const struct module *mod, uint64_t addr)
{
 return addr - (uint64_t) mod->module_init < mod->init_size;
}
