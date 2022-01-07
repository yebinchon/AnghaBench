
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct module {int dummy; } ;


 scalar_t__ in_core (struct module const*,int ) ;
 scalar_t__ in_init (struct module const*,int ) ;

__attribute__((used)) static inline int
is_internal (const struct module *mod, uint64_t value)
{
 return in_init(mod, value) || in_core(mod, value);
}
