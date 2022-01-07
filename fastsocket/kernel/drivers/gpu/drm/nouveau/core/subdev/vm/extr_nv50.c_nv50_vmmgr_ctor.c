
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned long long limit; int dma_bits; int pgt_bits; int spg_shift; int lpg_shift; int flush; int unmap; int map_sg; int map; int map_pgt; int create; } ;
struct nv50_vmmgr_priv {int lock; TYPE_1__ base; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_vmmgr_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,char*,char*,struct nv50_vmmgr_priv**) ;
 int nv50_vm_create ;
 int nv50_vm_flush ;
 int nv50_vm_map ;
 int nv50_vm_map_pgt ;
 int nv50_vm_map_sg ;
 int nv50_vm_unmap ;
 struct nouveau_object* nv_object (struct nv50_vmmgr_priv*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int
nv50_vmmgr_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
  struct nouveau_oclass *oclass, void *data, u32 size,
  struct nouveau_object **pobject)
{
 struct nv50_vmmgr_priv *priv;
 int ret;

 ret = nouveau_vmmgr_create(parent, engine, oclass, "VM", "vm", &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 priv->base.limit = 1ULL << 40;
 priv->base.dma_bits = 40;
 priv->base.pgt_bits = 29 - 12;
 priv->base.spg_shift = 12;
 priv->base.lpg_shift = 16;
 priv->base.create = nv50_vm_create;
 priv->base.map_pgt = nv50_vm_map_pgt;
 priv->base.map = nv50_vm_map;
 priv->base.map_sg = nv50_vm_map_sg;
 priv->base.unmap = nv50_vm_unmap;
 priv->base.flush = nv50_vm_flush;
 spin_lock_init(&priv->lock);
 return 0;
}
