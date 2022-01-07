
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int device; TYPE_2__* bus; } ;
struct drm_device {struct pci_dev* pdev; } ;
struct TYPE_4__ {TYPE_1__* self; } ;
struct TYPE_3__ {int vendor; int device; } ;



__attribute__((used)) static int mga_driver_device_is_agp(struct drm_device *dev)
{
 const struct pci_dev *const pdev = dev->pdev;
 if ((pdev->device == 0x0525) && pdev->bus->self
     && (pdev->bus->self->vendor == 0x3388)
     && (pdev->bus->self->device == 0x0021)) {
  return 0;
 }

 return 2;
}
