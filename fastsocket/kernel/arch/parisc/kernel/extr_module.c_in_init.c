
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {void* module_init; int init_size; } ;



__attribute__((used)) static inline int in_init(struct module *me, void *loc)
{
 return (loc >= me->module_init &&
  loc <= (me->module_init + me->init_size));
}
