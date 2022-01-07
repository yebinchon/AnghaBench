
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int alloc; } ;
struct nv50_instmem_priv {TYPE_1__ base; int lock; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_instmem_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nv50_instmem_priv**) ;
 int nv50_instmem_alloc ;
 struct nouveau_object* nv_object (struct nv50_instmem_priv*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int
nv50_instmem_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
    struct nouveau_oclass *oclass, void *data, u32 size,
    struct nouveau_object **pobject)
{
 struct nv50_instmem_priv *priv;
 int ret;

 ret = nouveau_instmem_create(parent, engine, oclass, &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 spin_lock_init(&priv->lock);
 priv->base.alloc = nv50_instmem_alloc;
 return 0;
}
