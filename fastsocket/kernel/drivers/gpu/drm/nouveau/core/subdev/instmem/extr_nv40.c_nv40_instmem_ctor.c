
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int reserved; int alloc; } ;
struct nv04_instmem_priv {int created; int ramfc; int ramro; int ramht; int vbios; TYPE_1__ base; int heap; int iomem; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_device {int chipset; struct pci_dev* pdev; } ;


 int EFAULT ;
 int NVOBJ_FLAG_ZERO_ALLOC ;
 int hweight8 (int) ;
 int ioremap (int ,scalar_t__) ;
 int nouveau_gpuobj_new (struct nouveau_object*,int *,int,int ,int ,int *) ;
 int nouveau_instmem_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nv04_instmem_priv**) ;
 int nouveau_mm_init (int *,int ,int,int) ;
 int nouveau_ramht_new (struct nouveau_object*,int *,int,int ,int *) ;
 int nv04_instmem_alloc ;
 scalar_t__ nv44_graph_class (struct nv04_instmem_priv*) ;
 struct nouveau_device* nv_device (struct nouveau_object*) ;
 int nv_error (struct nv04_instmem_priv*,char*) ;
 struct nouveau_object* nv_object (struct nv04_instmem_priv*) ;
 int nv_rd32 (struct nv04_instmem_priv*,int) ;
 scalar_t__ pci_resource_len (struct pci_dev*,int) ;
 int pci_resource_start (struct pci_dev*,int) ;
 int round_up (int,int) ;

__attribute__((used)) static int
nv40_instmem_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
    struct nouveau_oclass *oclass, void *data, u32 size,
    struct nouveau_object **pobject)
{
 struct nouveau_device *device = nv_device(parent);
 struct pci_dev *pdev = device->pdev;
 struct nv04_instmem_priv *priv;
 int ret, bar, vs;

 ret = nouveau_instmem_create(parent, engine, oclass, &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;


 if (pci_resource_len(pdev, 2))
  bar = 2;
 else
  bar = 3;

 priv->iomem = ioremap(pci_resource_start(pdev, bar),
         pci_resource_len(pdev, bar));
 if (!priv->iomem) {
  nv_error(priv, "unable to map PRAMIN BAR\n");
  return -EFAULT;
 }





 vs = hweight8((nv_rd32(priv, 0x001540) & 0x0000ff00) >> 8);
 if (device->chipset == 0x40) priv->base.reserved = 0x6aa0 * vs;
 else if (device->chipset < 0x43) priv->base.reserved = 0x4f00 * vs;
 else if (nv44_graph_class(priv)) priv->base.reserved = 0x4980 * vs;
 else priv->base.reserved = 0x4a40 * vs;
 priv->base.reserved += 16 * 1024;
 priv->base.reserved *= 32;
 priv->base.reserved += 512 * 1024;
 priv->base.reserved += 512 * 1024;

 priv->base.reserved = round_up(priv->base.reserved, 4096);
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




 ret = nouveau_gpuobj_new(parent, ((void*)0), 0x08000, 0, 0, &priv->ramro);
 if (ret)
  return ret;




 ret = nouveau_gpuobj_new(parent, ((void*)0), 0x20000, 0,
     NVOBJ_FLAG_ZERO_ALLOC, &priv->ramfc);
 if (ret)
  return ret;

 priv->created = 1;
 return 0;
}
