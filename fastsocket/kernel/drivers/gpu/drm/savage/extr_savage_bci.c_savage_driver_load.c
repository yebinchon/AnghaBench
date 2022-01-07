
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {int pdev; void* dev_private; } ;
typedef enum savage_family { ____Placeholder_savage_family } savage_family ;
struct TYPE_3__ {int chipset; } ;
typedef TYPE_1__ drm_savage_private_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* kzalloc (int,int ) ;
 int pci_set_master (int ) ;

int savage_driver_load(struct drm_device *dev, unsigned long chipset)
{
 drm_savage_private_t *dev_priv;

 dev_priv = kzalloc(sizeof(drm_savage_private_t), GFP_KERNEL);
 if (dev_priv == ((void*)0))
  return -ENOMEM;

 dev->dev_private = (void *)dev_priv;

 dev_priv->chipset = (enum savage_family)chipset;

 pci_set_master(dev->pdev);

 return 0;
}
