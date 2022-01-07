
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_devinit {int post; } ;
struct nouveau_device {int cfgopt; } ;


 int nouveau_boolopt (int ,char*,int) ;
 int nouveau_subdev_create_ (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int ,char*,char*,int,void**) ;
 struct nouveau_device* nv_device (struct nouveau_object*) ;

int
nouveau_devinit_create_(struct nouveau_object *parent,
   struct nouveau_object *engine,
   struct nouveau_oclass *oclass,
   int size, void **pobject)
{
 struct nouveau_device *device = nv_device(parent);
 struct nouveau_devinit *devinit;
 int ret;

 ret = nouveau_subdev_create_(parent, engine, oclass, 0, "DEVINIT",
         "init", size, pobject);
 devinit = *pobject;
 if (ret)
  return ret;

 devinit->post = nouveau_boolopt(device->cfgopt, "NvForcePost", 0);
 return 0;
}
