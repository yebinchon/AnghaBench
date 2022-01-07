
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_6__ {int flush; int unmap; int umap; int kmap; int alloc; } ;
struct nvc0_bar_priv {int lock; TYPE_3__ base; TYPE_2__* bar; } ;
struct nouveau_vm {TYPE_1__* pgt; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_gpuobj {int addr; } ;
struct nouveau_device {struct pci_dev* pdev; } ;
struct TYPE_5__ {struct nouveau_gpuobj* pgd; struct nouveau_vm* vm; struct nouveau_gpuobj* mem; } ;
struct TYPE_4__ {int* refcount; struct nouveau_gpuobj** obj; } ;


 int NVOBJ_FLAG_ZERO_ALLOC ;
 int lower_32_bits (int) ;
 int nouveau_bar_alloc ;
 int nouveau_bar_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nvc0_bar_priv**) ;
 int nouveau_gpuobj_new (struct nouveau_object*,int *,int,int,int ,struct nouveau_gpuobj**) ;
 int nouveau_vm_new (struct nouveau_device*,int ,int,int ,struct nouveau_vm**) ;
 int nouveau_vm_ref (struct nouveau_vm*,struct nouveau_vm**,struct nouveau_gpuobj*) ;
 int nv84_bar_flush ;
 struct nouveau_device* nv_device (struct nouveau_object*) ;
 struct nouveau_object* nv_object (struct nvc0_bar_priv*) ;
 int nv_wo32 (struct nouveau_gpuobj*,int,int ) ;
 int nvc0_bar_kmap ;
 int nvc0_bar_umap ;
 int nvc0_bar_unmap ;
 int pci_resource_len (struct pci_dev*,int) ;
 int spin_lock_init (int *) ;
 int upper_32_bits (int) ;

__attribute__((used)) static int
nvc0_bar_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
       struct nouveau_oclass *oclass, void *data, u32 size,
       struct nouveau_object **pobject)
{
 struct nouveau_device *device = nv_device(parent);
 struct pci_dev *pdev = device->pdev;
 struct nvc0_bar_priv *priv;
 struct nouveau_gpuobj *mem;
 struct nouveau_vm *vm;
 int ret;

 ret = nouveau_bar_create(parent, engine, oclass, &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;


 ret = nouveau_gpuobj_new(parent, ((void*)0), 0x1000, 0, 0, &priv->bar[0].mem);
 mem = priv->bar[0].mem;
 if (ret)
  return ret;

 ret = nouveau_gpuobj_new(parent, ((void*)0), 0x8000, 0, 0, &priv->bar[0].pgd);
 if (ret)
  return ret;

 ret = nouveau_vm_new(device, 0, pci_resource_len(pdev, 3), 0, &vm);
 if (ret)
  return ret;

 ret = nouveau_gpuobj_new(parent, ((void*)0),
     (pci_resource_len(pdev, 3) >> 12) * 8,
     0x1000, NVOBJ_FLAG_ZERO_ALLOC,
     &vm->pgt[0].obj[0]);
 vm->pgt[0].refcount[0] = 1;
 if (ret)
  return ret;

 ret = nouveau_vm_ref(vm, &priv->bar[0].vm, priv->bar[0].pgd);
 nouveau_vm_ref(((void*)0), &vm, ((void*)0));
 if (ret)
  return ret;

 nv_wo32(mem, 0x0200, lower_32_bits(priv->bar[0].pgd->addr));
 nv_wo32(mem, 0x0204, upper_32_bits(priv->bar[0].pgd->addr));
 nv_wo32(mem, 0x0208, lower_32_bits(pci_resource_len(pdev, 3) - 1));
 nv_wo32(mem, 0x020c, upper_32_bits(pci_resource_len(pdev, 3) - 1));


 ret = nouveau_gpuobj_new(parent, ((void*)0), 0x1000, 0, 0, &priv->bar[1].mem);
 mem = priv->bar[1].mem;
 if (ret)
  return ret;

 ret = nouveau_gpuobj_new(parent, ((void*)0), 0x8000, 0, 0, &priv->bar[1].pgd);
 if (ret)
  return ret;

 ret = nouveau_vm_new(device, 0, pci_resource_len(pdev, 1), 0, &vm);
 if (ret)
  return ret;

 ret = nouveau_vm_ref(vm, &priv->bar[1].vm, priv->bar[1].pgd);
 nouveau_vm_ref(((void*)0), &vm, ((void*)0));
 if (ret)
  return ret;

 nv_wo32(mem, 0x0200, lower_32_bits(priv->bar[1].pgd->addr));
 nv_wo32(mem, 0x0204, upper_32_bits(priv->bar[1].pgd->addr));
 nv_wo32(mem, 0x0208, lower_32_bits(pci_resource_len(pdev, 1) - 1));
 nv_wo32(mem, 0x020c, upper_32_bits(pci_resource_len(pdev, 1) - 1));

 priv->base.alloc = nouveau_bar_alloc;
 priv->base.kmap = nvc0_bar_kmap;
 priv->base.umap = nvc0_bar_umap;
 priv->base.unmap = nvc0_bar_unmap;
 priv->base.flush = nv84_bar_flush;
 spin_lock_init(&priv->lock);
 return 0;
}
