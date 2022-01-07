
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int limit; int dma_bits; int pgt_bits; int spg_shift; int lpg_shift; int flush; int unmap; int map_sg; int create; } ;
struct nv04_vmmgr_priv {TYPE_3__* vm; TYPE_2__ base; int nullp; int null; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_device {int pdev; int cfgopt; } ;
struct TYPE_6__ {TYPE_1__* pgt; } ;
struct TYPE_4__ {int* refcount; int * obj; } ;


 int ENOMEM ;
 int NV44_GART_PAGE ;
 int NV44_GART_SIZE ;
 int NVOBJ_FLAG_ZERO_ALLOC ;
 int PCI_CAP_ID_AGP ;
 int nouveau_boolopt (int ,char*,int) ;
 int nouveau_gpuobj_new (struct nouveau_object*,int *,int,int,int ,int *) ;
 int nouveau_object_ctor (struct nouveau_object*,struct nouveau_object*,int *,void*,int ,struct nouveau_object**) ;
 int nouveau_vm_create (TYPE_2__*,int ,int,int ,int,TYPE_3__**) ;
 int nouveau_vmmgr_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,char*,char*,struct nv04_vmmgr_priv**) ;
 int nv04_vm_create ;
 int nv04_vmmgr_oclass ;
 int nv44_vm_flush ;
 int nv44_vm_map_sg ;
 int nv44_vm_unmap ;
 struct nouveau_device* nv_device (struct nouveau_object*) ;
 int nv_error (struct nv04_vmmgr_priv*,char*) ;
 struct nouveau_object* nv_object (struct nv04_vmmgr_priv*) ;
 int pci_alloc_consistent (int ,int,int *) ;
 scalar_t__ pci_find_capability (int ,int ) ;

__attribute__((used)) static int
nv44_vmmgr_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
  struct nouveau_oclass *oclass, void *data, u32 size,
  struct nouveau_object **pobject)
{
 struct nouveau_device *device = nv_device(parent);
 struct nv04_vmmgr_priv *priv;
 int ret;

 if (pci_find_capability(device->pdev, PCI_CAP_ID_AGP) ||
     !nouveau_boolopt(device->cfgopt, "NvPCIE", 1)) {
  return nouveau_object_ctor(parent, engine, &nv04_vmmgr_oclass,
        data, size, pobject);
 }

 ret = nouveau_vmmgr_create(parent, engine, oclass, "PCIEGART",
       "pciegart", &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 priv->base.create = nv04_vm_create;
 priv->base.limit = NV44_GART_SIZE;
 priv->base.dma_bits = 39;
 priv->base.pgt_bits = 32 - 12;
 priv->base.spg_shift = 12;
 priv->base.lpg_shift = 12;
 priv->base.map_sg = nv44_vm_map_sg;
 priv->base.unmap = nv44_vm_unmap;
 priv->base.flush = nv44_vm_flush;

 priv->nullp = pci_alloc_consistent(device->pdev, 16 * 1024, &priv->null);
 if (!priv->nullp) {
  nv_error(priv, "unable to allocate dummy pages\n");
  return -ENOMEM;
 }

 ret = nouveau_vm_create(&priv->base, 0, NV44_GART_SIZE, 0, 4096,
    &priv->vm);
 if (ret)
  return ret;

 ret = nouveau_gpuobj_new(parent, ((void*)0),
    (NV44_GART_SIZE / NV44_GART_PAGE) * 4,
     512 * 1024, NVOBJ_FLAG_ZERO_ALLOC,
     &priv->vm->pgt[0].obj[0]);
 priv->vm->pgt[0].refcount[0] = 1;
 if (ret)
  return ret;

 return 0;
}
