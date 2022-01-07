
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_3__ {struct nouveau_object* device; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct nouveau_drm {TYPE_2__ client; } ;
struct drm_device {int dummy; } ;


 int drm_put_dev (struct drm_device*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nouveau_object_debug () ;
 int nouveau_object_ref (int *,struct nouveau_object**) ;
 struct drm_device* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void
nouveau_drm_remove(struct pci_dev *pdev)
{
 struct drm_device *dev = pci_get_drvdata(pdev);
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_object *device;

 device = drm->client.base.device;
 drm_put_dev(dev);

 nouveau_object_ref(((void*)0), &device);
 nouveau_object_debug();
}
