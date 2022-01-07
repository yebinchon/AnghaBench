
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_option {unsigned int flags; } ;


 unsigned int PNP_OPTION_SET_MASK ;
 unsigned int PNP_OPTION_SET_SHIFT ;

__attribute__((used)) static inline unsigned int pnp_option_set(struct pnp_option *option)
{
 return (option->flags >> PNP_OPTION_SET_SHIFT) & PNP_OPTION_SET_MASK;
}
