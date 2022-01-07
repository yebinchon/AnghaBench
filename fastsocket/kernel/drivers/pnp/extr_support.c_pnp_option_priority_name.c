
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_option {int dummy; } ;





 int pnp_option_priority (struct pnp_option*) ;

char *pnp_option_priority_name(struct pnp_option *option)
{
 switch (pnp_option_priority(option)) {
 case 128:
  return "preferred";
 case 130:
  return "acceptable";
 case 129:
  return "functional";
 }
 return "invalid";
}
