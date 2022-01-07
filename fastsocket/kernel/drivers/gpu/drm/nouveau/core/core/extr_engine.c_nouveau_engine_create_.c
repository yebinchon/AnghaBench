
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_engine {int lock; int contexts; } ;
struct nouveau_device {int cfgopt; } ;


 int ENODEV ;
 int INIT_LIST_HEAD (int *) ;
 int NV_ENGINE_CLASS ;
 int nouveau_boolopt (int ,char const*,int) ;
 int nouveau_subdev_create_ (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int ,char const*,char const*,int,void**) ;
 struct nouveau_device* nv_device (struct nouveau_object*) ;
 int nv_warn (struct nouveau_engine*,char*,char const*) ;
 int spin_lock_init (int *) ;

int
nouveau_engine_create_(struct nouveau_object *parent,
         struct nouveau_object *engobj,
         struct nouveau_oclass *oclass, bool enable,
         const char *iname, const char *fname,
         int length, void **pobject)
{
 struct nouveau_device *device = nv_device(parent);
 struct nouveau_engine *engine;
 int ret;

 ret = nouveau_subdev_create_(parent, engobj, oclass, NV_ENGINE_CLASS,
         iname, fname, length, pobject);
 engine = *pobject;
 if (ret)
  return ret;

 if (!nouveau_boolopt(device->cfgopt, iname, enable)) {
  if (!enable)
   nv_warn(engine, "disabled, %s=1 to enable\n", iname);
  return -ENODEV;
 }

 INIT_LIST_HEAD(&engine->contexts);
 spin_lock_init(&engine->lock);
 return 0;
}
