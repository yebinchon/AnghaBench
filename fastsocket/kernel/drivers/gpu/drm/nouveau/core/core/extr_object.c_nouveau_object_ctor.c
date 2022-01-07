
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_ofuncs {int (* ctor ) (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,void*,int ,struct nouveau_object**) ;int (* dtor ) (struct nouveau_object*) ;} ;
struct nouveau_oclass {int handle; struct nouveau_ofuncs* ofuncs; } ;
struct nouveau_object {int dummy; } ;


 int ENODEV ;
 int nv_debug (struct nouveau_object*,char*) ;
 int nv_error (struct nouveau_object*,char*,int ,int) ;
 int stub1 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,void*,int ,struct nouveau_object**) ;
 int stub2 (struct nouveau_object*) ;

int
nouveau_object_ctor(struct nouveau_object *parent,
      struct nouveau_object *engine,
      struct nouveau_oclass *oclass, void *data, u32 size,
      struct nouveau_object **pobject)
{
 struct nouveau_ofuncs *ofuncs = oclass->ofuncs;
 int ret;

 *pobject = ((void*)0);

 ret = ofuncs->ctor(parent, engine, oclass, data, size, pobject);
 if (ret < 0) {
  if (ret != -ENODEV) {
   nv_error(parent, "failed to create 0x%08x, %d\n",
     oclass->handle, ret);
  }

  if (*pobject) {
   ofuncs->dtor(*pobject);
   *pobject = ((void*)0);
  }

  return ret;
 }

 nv_debug(*pobject, "created\n");
 return 0;
}
