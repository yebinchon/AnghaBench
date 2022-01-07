
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_device {int pdev; } ;
struct nouveau_bar {int iomem; } ;


 int ioremap (int ,int ) ;
 int nouveau_subdev_create_ (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int ,char*,char*,int,void**) ;
 struct nouveau_device* nv_device (struct nouveau_object*) ;
 int pci_resource_len (int ,int) ;
 int pci_resource_start (int ,int) ;

int
nouveau_bar_create_(struct nouveau_object *parent,
      struct nouveau_object *engine,
      struct nouveau_oclass *oclass, int length, void **pobject)
{
 struct nouveau_device *device = nv_device(parent);
 struct nouveau_bar *bar;
 int ret;

 ret = nouveau_subdev_create_(parent, engine, oclass, 0, "BARCTL",
         "bar", length, pobject);
 bar = *pobject;
 if (ret)
  return ret;

 bar->iomem = ioremap(pci_resource_start(device->pdev, 3),
        pci_resource_len(device->pdev, 3));
 return 0;
}
