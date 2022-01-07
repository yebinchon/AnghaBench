
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;


 scalar_t__ in_core (struct module*,void*) ;
 scalar_t__ in_init (struct module*,void*) ;

__attribute__((used)) static inline int in_local(struct module *me, void *loc)
{
 return in_init(me, loc) || in_core(me, loc);
}
