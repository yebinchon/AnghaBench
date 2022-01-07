
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
typedef int phandle ;


 struct device_node* of_find_node_by_phandle (int const) ;
 int * of_get_property (struct device_node*,char const*,int*) ;

struct device_node *
of_parse_phandle(struct device_node *np, const char *phandle_name, int index)
{
 const phandle *phandle;
 int size;

 phandle = of_get_property(np, phandle_name, &size);
 if ((!phandle) || (size < sizeof(*phandle) * (index + 1)))
  return ((void*)0);

 return of_find_node_by_phandle(phandle[index]);
}
