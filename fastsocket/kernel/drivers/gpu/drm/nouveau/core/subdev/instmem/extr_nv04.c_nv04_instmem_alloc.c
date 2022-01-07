
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nv04_instmem_priv {int created; } ;
struct nouveau_object {int refcount; } ;
struct nouveau_instmem {int dummy; } ;


 int atomic_dec (int *) ;
 int nouveau_object_ctor (struct nouveau_object*,struct nouveau_object*,int *,void*,scalar_t__,struct nouveau_object**) ;
 int nv04_instobj_oclass ;
 struct nouveau_object* nv_object (struct nouveau_instmem*) ;
 scalar_t__ unlikely (int) ;

int
nv04_instmem_alloc(struct nouveau_instmem *imem, struct nouveau_object *parent,
     u32 size, u32 align, struct nouveau_object **pobject)
{
 struct nouveau_object *engine = nv_object(imem);
 struct nv04_instmem_priv *priv = (void *)(imem);
 int ret;

 ret = nouveau_object_ctor(parent, engine, &nv04_instobj_oclass,
      (void *)(unsigned long)align, size, pobject);
 if (ret)
  return ret;






 if (unlikely(!priv->created))
  atomic_dec(&engine->refcount);

 return 0;
}
