
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {TYPE_2__* resource; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_device {int dummy; } ;
struct apertures_struct {int count; TYPE_1__* ranges; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {void* size; void* base; } ;


 int ENOMEM ;
 int IORESOURCE_ROM_SHADOW ;
 size_t PCI_ROM_RESOURCE ;
 struct apertures_struct* alloc_apertures (int) ;
 int driver ;
 int drm_get_pci_dev (struct pci_dev*,struct pci_device_id const*,int *) ;
 int kfree (struct apertures_struct*) ;
 int nouveau_config ;
 int nouveau_debug ;
 int nouveau_device_create (struct pci_dev*,int ,int ,int ,int ,struct nouveau_device**) ;
 int nouveau_name (struct pci_dev*) ;
 int nouveau_object_ref (int *,struct nouveau_object**) ;
 int pci_name (struct pci_dev*) ;
 void* pci_resource_len (struct pci_dev*,int) ;
 void* pci_resource_start (struct pci_dev*,int) ;
 int pci_set_master (struct pci_dev*) ;
 int remove_conflicting_framebuffers (struct apertures_struct*,char*,int) ;

__attribute__((used)) static int nouveau_drm_probe(struct pci_dev *pdev,
        const struct pci_device_id *pent)
{
 struct nouveau_device *device;
 struct apertures_struct *aper;
 bool boot = 0;
 int ret;


 aper = alloc_apertures(3);
 if (!aper)
  return -ENOMEM;

 aper->ranges[0].base = pci_resource_start(pdev, 1);
 aper->ranges[0].size = pci_resource_len(pdev, 1);
 aper->count = 1;

 if (pci_resource_len(pdev, 2)) {
  aper->ranges[aper->count].base = pci_resource_start(pdev, 2);
  aper->ranges[aper->count].size = pci_resource_len(pdev, 2);
  aper->count++;
 }

 if (pci_resource_len(pdev, 3)) {
  aper->ranges[aper->count].base = pci_resource_start(pdev, 3);
  aper->ranges[aper->count].size = pci_resource_len(pdev, 3);
  aper->count++;
 }




 remove_conflicting_framebuffers(aper, "nouveaufb", boot);
 kfree(aper);

 ret = nouveau_device_create(pdev, nouveau_name(pdev), pci_name(pdev),
        nouveau_config, nouveau_debug, &device);
 if (ret)
  return ret;

 pci_set_master(pdev);

 ret = drm_get_pci_dev(pdev, pent, &driver);
 if (ret) {
  nouveau_object_ref(((void*)0), (struct nouveau_object **)&device);
  return ret;
 }

 return 0;
}
