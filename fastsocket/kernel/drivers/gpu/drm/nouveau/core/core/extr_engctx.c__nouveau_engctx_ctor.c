
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_engctx {int dummy; } ;


 int NVOBJ_FLAG_ZERO_ALLOC ;
 int nouveau_engctx_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int *,int,int,int ,struct nouveau_engctx**) ;
 struct nouveau_object* nv_object (struct nouveau_engctx*) ;

int
_nouveau_engctx_ctor(struct nouveau_object *parent,
       struct nouveau_object *engine,
       struct nouveau_oclass *oclass, void *data, u32 size,
       struct nouveau_object **pobject)
{
 struct nouveau_engctx *engctx;
 int ret;

 ret = nouveau_engctx_create(parent, engine, oclass, ((void*)0), 256, 256,
        NVOBJ_FLAG_ZERO_ALLOC, &engctx);
 *pobject = nv_object(engctx);
 return ret;
}
