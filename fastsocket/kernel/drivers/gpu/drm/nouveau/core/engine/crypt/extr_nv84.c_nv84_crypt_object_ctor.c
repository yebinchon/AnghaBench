
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_gpuobj {int dummy; } ;


 int nouveau_gpuobj_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int ,struct nouveau_object*,int,int,int ,struct nouveau_gpuobj**) ;
 int nv_mclass (struct nouveau_gpuobj*) ;
 struct nouveau_object* nv_object (struct nouveau_gpuobj*) ;
 int nv_wo32 (struct nouveau_gpuobj*,int,int) ;

__attribute__((used)) static int
nv84_crypt_object_ctor(struct nouveau_object *parent,
         struct nouveau_object *engine,
         struct nouveau_oclass *oclass, void *data, u32 size,
         struct nouveau_object **pobject)
{
 struct nouveau_gpuobj *obj;
 int ret;

 ret = nouveau_gpuobj_create(parent, engine, oclass, 0, parent,
        16, 16, 0, &obj);
 *pobject = nv_object(obj);
 if (ret)
  return ret;

 nv_wo32(obj, 0x00, nv_mclass(obj));
 nv_wo32(obj, 0x04, 0x00000000);
 nv_wo32(obj, 0x08, 0x00000000);
 nv_wo32(obj, 0x0c, 0x00000000);
 return 0;
}
