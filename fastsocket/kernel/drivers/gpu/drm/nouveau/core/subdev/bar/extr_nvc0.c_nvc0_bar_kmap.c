
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvc0_bar_priv {TYPE_2__* bar; } ;
struct nouveau_vma {int dummy; } ;
struct nouveau_mem {int size; } ;
struct nouveau_bar {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pgd; int vm; } ;
struct TYPE_3__ {int addr; } ;


 int nouveau_vm_get (int ,int,int,int ,struct nouveau_vma*) ;
 int nouveau_vm_map (struct nouveau_vma*,struct nouveau_mem*) ;
 int nv_subdev (struct nouveau_bar*) ;
 int nvc0_vm_flush_engine (int ,int ,int) ;

__attribute__((used)) static int
nvc0_bar_kmap(struct nouveau_bar *bar, struct nouveau_mem *mem,
       u32 flags, struct nouveau_vma *vma)
{
 struct nvc0_bar_priv *priv = (void *)bar;
 int ret;

 ret = nouveau_vm_get(priv->bar[0].vm, mem->size << 12, 12, flags, vma);
 if (ret)
  return ret;

 nouveau_vm_map(vma, mem);
 nvc0_vm_flush_engine(nv_subdev(bar), priv->bar[0].pgd->addr, 5);
 return 0;
}
