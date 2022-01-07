
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nv50_disp_priv {int dummy; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int refcount; } ;
struct nouveau_engctx {int dummy; } ;
struct TYPE_4__ {int contexts; } ;
struct TYPE_3__ {int mutex; } ;


 int EBUSY ;
 int NVOBJ_FLAG_HEAP ;
 scalar_t__ NV_DEVICE_CLASS ;
 int atomic_inc (int *) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nouveau_engctx_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int *,int,int,int ,struct nouveau_engctx**) ;
 TYPE_2__* nv_engine (struct nv50_disp_priv*) ;
 scalar_t__ nv_mclass (struct nouveau_object*) ;
 struct nouveau_object* nv_object (struct nouveau_engctx*) ;
 TYPE_1__* nv_subdev (struct nv50_disp_priv*) ;

__attribute__((used)) static int
nv50_disp_data_ctor(struct nouveau_object *parent,
      struct nouveau_object *engine,
      struct nouveau_oclass *oclass, void *data, u32 size,
      struct nouveau_object **pobject)
{
 struct nv50_disp_priv *priv = (void *)engine;
 struct nouveau_engctx *ectx;
 int ret = -EBUSY;


 if (nv_mclass(parent) != NV_DEVICE_CLASS) {
  atomic_inc(&parent->refcount);
  *pobject = parent;
  return 0;
 }


 mutex_lock(&nv_subdev(priv)->mutex);
 if (list_empty(&nv_engine(priv)->contexts)) {
  ret = nouveau_engctx_create(parent, engine, oclass, ((void*)0),
         0x10000, 0x10000,
         NVOBJ_FLAG_HEAP, &ectx);
  *pobject = nv_object(ectx);
 }
 mutex_unlock(&nv_subdev(priv)->mutex);
 return ret;
}
