
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int page_order; } ;
struct TYPE_3__ {int gatt_bus_addr; int dev; int current_size; } ;


 int ALI_CACHE_FLUSH_ADDR_MASK ;
 int ALI_CACHE_FLUSH_CTRL ;
 int ALI_CACHE_FLUSH_EN ;
 TYPE_2__* A_SIZE_32 (int ) ;
 int PAGE_SIZE ;
 TYPE_1__* agp_bridge ;
 int global_cache_flush () ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_dword (int ,int ,int) ;

__attribute__((used)) static void m1541_cache_flush(void)
{
 int i, page_count;
 u32 temp;

 global_cache_flush();

 page_count = 1 << A_SIZE_32(agp_bridge->current_size)->page_order;
 for (i = 0; i < PAGE_SIZE * page_count; i += PAGE_SIZE) {
  pci_read_config_dword(agp_bridge->dev, ALI_CACHE_FLUSH_CTRL,
    &temp);
  pci_write_config_dword(agp_bridge->dev, ALI_CACHE_FLUSH_CTRL,
    (((temp & ALI_CACHE_FLUSH_ADDR_MASK) |
      (agp_bridge->gatt_bus_addr + i)) |
     ALI_CACHE_FLUSH_EN));
 }
}
