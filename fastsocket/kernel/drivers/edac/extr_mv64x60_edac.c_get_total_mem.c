
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv64x60_mc_pdata {unsigned int total_mem; } ;
struct device_node {int dummy; } ;


 struct device_node* of_find_node_by_type (int *,char*) ;
 unsigned int* of_get_property (struct device_node*,char*,int *) ;

__attribute__((used)) static void get_total_mem(struct mv64x60_mc_pdata *pdata)
{
 struct device_node *np = ((void*)0);
 const unsigned int *reg;

 np = of_find_node_by_type(((void*)0), "memory");
 if (!np)
  return;

 reg = of_get_property(np, "reg", ((void*)0));

 pdata->total_mem = reg[1];
}
