
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_bridge_data {int dummy; } ;
typedef int dma_addr_t ;


 unsigned long tioca_physpage_to_gart (int ) ;

__attribute__((used)) static unsigned long
sgi_tioca_mask_memory(struct agp_bridge_data *bridge, dma_addr_t addr,
        int type)
{
 return tioca_physpage_to_gart(addr);
}
