
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct page {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int AGP_PAGE_DESTROY_UNMAP ;
 int ALI_CACHE_FLUSH_ADDR_MASK ;
 int ALI_CACHE_FLUSH_CTRL ;
 int ALI_CACHE_FLUSH_EN ;
 TYPE_1__* agp_bridge ;
 int agp_generic_destroy_page (struct page*,int) ;
 int global_cache_flush () ;
 int page_to_phys (struct page*) ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_dword (int ,int ,int) ;

__attribute__((used)) static void m1541_destroy_page(struct page *page, int flags)
{
 u32 temp;

 if (page == ((void*)0))
  return;

 if (flags & AGP_PAGE_DESTROY_UNMAP) {
  global_cache_flush();

  pci_read_config_dword(agp_bridge->dev, ALI_CACHE_FLUSH_CTRL, &temp);
  pci_write_config_dword(agp_bridge->dev, ALI_CACHE_FLUSH_CTRL,
           (((temp & ALI_CACHE_FLUSH_ADDR_MASK) |
      page_to_phys(page)) | ALI_CACHE_FLUSH_EN));
 }
 agp_generic_destroy_page(page, flags);
}
