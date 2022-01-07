
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct drm_ati_pcigart_info {int * table_handle; int table_size; } ;


 int ENOMEM ;
 int PAGE_SIZE ;
 int * drm_pci_alloc (struct drm_device*,int ,int ) ;

__attribute__((used)) static int drm_ati_alloc_pcigart_table(struct drm_device *dev,
           struct drm_ati_pcigart_info *gart_info)
{
 gart_info->table_handle = drm_pci_alloc(dev, gart_info->table_size,
      PAGE_SIZE);
 if (gart_info->table_handle == ((void*)0))
  return -ENOMEM;

 return 0;
}
