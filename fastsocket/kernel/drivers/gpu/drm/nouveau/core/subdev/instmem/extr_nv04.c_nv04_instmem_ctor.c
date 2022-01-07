
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int reserved; int alloc; } ;
struct nv04_instmem_priv {int created; int ramro; int ramfc; int ramht; int vbios; TYPE_1__ base; int heap; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;


 int NVOBJ_FLAG_ZERO_ALLOC ;
 int nouveau_gpuobj_new (struct nouveau_object*,int *,int,int ,int ,int *) ;
 int nouveau_instmem_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nv04_instmem_priv**) ;
 int nouveau_mm_init (int *,int ,int,int) ;
 int nouveau_ramht_new (struct nouveau_object*,int *,int,int ,int *) ;
 int nv04_instmem_alloc ;
 struct nouveau_object* nv_object (struct nv04_instmem_priv*) ;

__attribute__((used)) static int
nv04_instmem_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
    struct nouveau_oclass *oclass, void *data, u32 size,
    struct nouveau_object **pobject)
{
 struct nv04_instmem_priv *priv;
 int ret;

 ret = nouveau_instmem_create(parent, engine, oclass, &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;


 priv->base.reserved = 512 * 1024;
 priv->base.alloc = nv04_instmem_alloc;

 ret = nouveau_mm_init(&priv->heap, 0, priv->base.reserved, 1);
 if (ret)
  return ret;


 ret = nouveau_gpuobj_new(parent, ((void*)0), 0x10000, 0, 0, &priv->vbios);
 if (ret)
  return ret;


 ret = nouveau_ramht_new(parent, ((void*)0), 0x08000, 0, &priv->ramht);
 if (ret)
  return ret;


 ret = nouveau_gpuobj_new(parent, ((void*)0), 0x00800, 0,
     NVOBJ_FLAG_ZERO_ALLOC, &priv->ramfc);
 if (ret)
  return ret;


 ret = nouveau_gpuobj_new(parent, ((void*)0), 0x00200, 0, 0, &priv->ramro);
 if (ret)
  return ret;

 priv->created = 1;
 return 0;
}
