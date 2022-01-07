
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_option {int flags; } ;


 int PNP_OPTION_DEPENDENT ;

__attribute__((used)) static inline int pnp_option_is_dependent(struct pnp_option *option)
{
 return option->flags & PNP_OPTION_DEPENDENT ? 1 : 0;
}
