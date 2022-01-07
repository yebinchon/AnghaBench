
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_driver {int dummy; } ;
struct drm_driver {int dummy; } ;



int drm_pci_init(struct drm_driver *driver, struct pci_driver *pdriver)
{
 return -1;
}
