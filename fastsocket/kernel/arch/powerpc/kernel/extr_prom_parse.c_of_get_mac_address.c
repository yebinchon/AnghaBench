
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int length; void const* value; } ;
struct device_node {int dummy; } ;


 scalar_t__ is_valid_ether_addr (void const*) ;
 struct property* of_find_property (struct device_node*,char*,int *) ;

const void *of_get_mac_address(struct device_node *np)
{
 struct property *pp;

 pp = of_find_property(np, "mac-address", ((void*)0));
 if (pp && (pp->length == 6) && is_valid_ether_addr(pp->value))
  return pp->value;

 pp = of_find_property(np, "local-mac-address", ((void*)0));
 if (pp && (pp->length == 6) && is_valid_ether_addr(pp->value))
  return pp->value;

 pp = of_find_property(np, "address", ((void*)0));
 if (pp && (pp->length == 6) && is_valid_ether_addr(pp->value))
  return pp->value;

 return ((void*)0);
}
