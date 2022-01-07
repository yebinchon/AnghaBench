
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct device_node {int dummy; } ;


 unsigned char* of_get_property (struct device_node*,char*,int *) ;
 scalar_t__ of_n_addr_cells (struct device_node*) ;
 scalar_t__ of_n_size_cells (struct device_node*) ;
 unsigned long of_read_number (scalar_t__ const*,scalar_t__) ;

void of_parse_dma_window(struct device_node *dn, const void *dma_window_prop,
  unsigned long *busno, unsigned long *phys, unsigned long *size)
{
 const u32 *dma_window;
 u32 cells;
 const unsigned char *prop;

 dma_window = dma_window_prop;


 *busno = *(dma_window++);

 prop = of_get_property(dn, "ibm,#dma-address-cells", ((void*)0));
 if (!prop)
  prop = of_get_property(dn, "#address-cells", ((void*)0));

 cells = prop ? *(u32 *)prop : of_n_addr_cells(dn);
 *phys = of_read_number(dma_window, cells);

 dma_window += cells;

 prop = of_get_property(dn, "ibm,#dma-size-cells", ((void*)0));
 cells = prop ? *(u32 *)prop : of_n_size_cells(dn);
 *size = of_read_number(dma_window, cells);
}
