
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct device_node {int dummy; } ;


 int n_mem_size_cells ;
 int* of_get_property (struct device_node*,char*,int*) ;
 int read_n_cells (int ,int const**) ;

__attribute__((used)) static u64 of_get_lmb_size(struct device_node *memory)
{
 const u32 *prop;
 u32 len;

 prop = of_get_property(memory, "ibm,lmb-size", &len);
 if (!prop || len < sizeof(unsigned int))
  return 0;

 return read_n_cells(n_mem_size_cells, &prop);
}
