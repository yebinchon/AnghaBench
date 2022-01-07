
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_sg_mem {int pages; int * busaddr; } ;
struct drm_device {int pdev; struct drm_sg_mem* sg; } ;
struct drm_ati_pcigart_info {int table_size; scalar_t__ gart_table_location; scalar_t__ table_handle; scalar_t__ bus_addr; } ;


 scalar_t__ DRM_ATI_GART_MAIN ;
 int DRM_ERROR (char*) ;
 int PAGE_SIZE ;
 int PCI_DMA_BIDIRECTIONAL ;
 int drm_ati_free_pcigart_table (struct drm_device*,struct drm_ati_pcigart_info*) ;
 int pci_unmap_page (int ,int ,int ,int ) ;

int drm_ati_pcigart_cleanup(struct drm_device *dev, struct drm_ati_pcigart_info *gart_info)
{
 struct drm_sg_mem *entry = dev->sg;
 unsigned long pages;
 int i;
 int max_pages;


 if (!entry) {
  DRM_ERROR("no scatter/gather memory!\n");
  return 0;
 }

 if (gart_info->bus_addr) {

  max_pages = (gart_info->table_size / sizeof(u32));
  pages = (entry->pages <= max_pages)
    ? entry->pages : max_pages;

  for (i = 0; i < pages; i++) {
   if (!entry->busaddr[i])
    break;
   pci_unmap_page(dev->pdev, entry->busaddr[i],
      PAGE_SIZE, PCI_DMA_BIDIRECTIONAL);
  }

  if (gart_info->gart_table_location == DRM_ATI_GART_MAIN)
   gart_info->bus_addr = 0;
 }

 if (gart_info->gart_table_location == DRM_ATI_GART_MAIN &&
     gart_info->table_handle) {
  drm_ati_free_pcigart_table(dev, gart_info);
 }

 return 1;
}
