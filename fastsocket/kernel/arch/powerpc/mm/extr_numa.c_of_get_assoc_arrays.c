
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;
struct assoc_arrays {int n_arrays; int array_sz; int const* arrays; } ;


 int* of_get_property (struct device_node*,char*,int*) ;

__attribute__((used)) static int of_get_assoc_arrays(struct device_node *memory,
          struct assoc_arrays *aa)
{
 const u32 *prop;
 u32 len;

 prop = of_get_property(memory, "ibm,associativity-lookup-arrays", &len);
 if (!prop || len < 2 * sizeof(unsigned int))
  return -1;

 aa->n_arrays = *prop++;
 aa->array_sz = *prop++;




 if (len < (aa->n_arrays * aa->array_sz + 2) * sizeof(unsigned int))
  return -1;

 aa->arrays = prop;
 return 0;
}
