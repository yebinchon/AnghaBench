
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct device_node {int dummy; } ;


 unsigned int* of_get_property (struct device_node const*,char*,unsigned int*) ;

unsigned int dcr_resource_len(const struct device_node *np, unsigned int index)
{
 unsigned int ds;
 const u32 *dr = of_get_property(np, "dcr-reg", &ds);

 if (dr == ((void*)0) || ds & 1 || index >= (ds / 8))
  return 0;

 return dr[index * 2 + 1];
}
