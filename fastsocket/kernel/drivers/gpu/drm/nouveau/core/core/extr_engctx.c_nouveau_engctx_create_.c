
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_engine {int lock; int contexts; } ;
struct nouveau_client {TYPE_1__* vm; } ;
struct TYPE_4__ {unsigned long long addr; int head; } ;
struct TYPE_3__ {int * engref; } ;


 int NV_ENGCTX_CLASS ;
 int atomic_inc (int *) ;
 int list_add (int *,int *) ;
 struct nouveau_client* nouveau_client (struct nouveau_object*) ;
 int nouveau_engctx_exists (struct nouveau_object*,struct nouveau_engine*,void**) ;
 int nouveau_gpuobj_create_ (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int ,struct nouveau_object*,scalar_t__,scalar_t__,scalar_t__,int,void**) ;
 int nouveau_object_create_ (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int ,int,void**) ;
 int nouveau_object_ref (int *,struct nouveau_object**) ;
 TYPE_2__* nv_engctx (struct nouveau_object*) ;
 size_t nv_engidx (struct nouveau_object*) ;
 struct nouveau_engine* nv_engine (struct nouveau_object*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
nouveau_engctx_create_(struct nouveau_object *parent,
         struct nouveau_object *engobj,
         struct nouveau_oclass *oclass,
         struct nouveau_object *pargpu,
         u32 size, u32 align, u32 flags,
         int length, void **pobject)
{
 struct nouveau_client *client = nouveau_client(parent);
 struct nouveau_engine *engine = nv_engine(engobj);
 struct nouveau_object *engctx;
 unsigned long save;
 int ret;




 spin_lock_irqsave(&engine->lock, save);
 ret = nouveau_engctx_exists(parent, engine, pobject);
 spin_unlock_irqrestore(&engine->lock, save);
 if (ret)
  return ret;




 if (size) {
  ret = nouveau_gpuobj_create_(parent, engobj, oclass,
          NV_ENGCTX_CLASS,
          pargpu, size, align, flags,
          length, pobject);
 } else {
  ret = nouveau_object_create_(parent, engobj, oclass,
          NV_ENGCTX_CLASS, length, pobject);
 }

 engctx = *pobject;
 if (ret)
  return ret;





 spin_lock_irqsave(&engine->lock, save);
 ret = nouveau_engctx_exists(parent, engine, pobject);
 if (ret) {
  spin_unlock_irqrestore(&engine->lock, save);
  nouveau_object_ref(((void*)0), &engctx);
  return ret;
 }

 if (client->vm)
  atomic_inc(&client->vm->engref[nv_engidx(engobj)]);
 list_add(&nv_engctx(engctx)->head, &engine->contexts);
 nv_engctx(engctx)->addr = ~0ULL;
 spin_unlock_irqrestore(&engine->lock, save);
 return 0;
}
