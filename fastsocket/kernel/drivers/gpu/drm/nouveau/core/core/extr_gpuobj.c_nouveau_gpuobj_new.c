
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_object {struct nouveau_object* engine; } ;
struct nouveau_gpuobj_class {int flags; int align; int size; struct nouveau_object* pargpu; } ;
struct nouveau_gpuobj {int dummy; } ;
typedef int args ;


 int BUG_ON (int ) ;
 int NV_SUBDEV_CLASS ;
 int _nouveau_gpuobj_oclass ;
 int nouveau_object_ctor (struct nouveau_object*,struct nouveau_object*,int *,struct nouveau_gpuobj_class*,int,struct nouveau_object**) ;
 int nv_iclass (struct nouveau_object*,int ) ;

int
nouveau_gpuobj_new(struct nouveau_object *parent, struct nouveau_object *pargpu,
     u32 size, u32 align, u32 flags,
     struct nouveau_gpuobj **pgpuobj)
{
 struct nouveau_object *engine = parent;
 struct nouveau_gpuobj_class args = {
  .pargpu = pargpu,
  .size = size,
  .align = align,
  .flags = flags,
 };

 if (!nv_iclass(engine, NV_SUBDEV_CLASS))
  engine = engine->engine;
 BUG_ON(engine == ((void*)0));

 return nouveau_object_ctor(parent, engine, &_nouveau_gpuobj_oclass,
       &args, sizeof(args),
       (struct nouveau_object **)pgpuobj);
}
