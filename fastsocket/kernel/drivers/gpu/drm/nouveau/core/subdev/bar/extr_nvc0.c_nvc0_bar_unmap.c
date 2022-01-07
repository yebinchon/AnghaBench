
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvc0_bar_priv {TYPE_2__* bar; } ;
struct nouveau_vma {scalar_t__ vm; } ;
struct nouveau_bar {int dummy; } ;
struct TYPE_4__ {scalar_t__ vm; TYPE_1__* pgd; } ;
struct TYPE_3__ {int addr; } ;


 int nouveau_vm_put (struct nouveau_vma*) ;
 int nouveau_vm_unmap (struct nouveau_vma*) ;
 int nv_subdev (struct nouveau_bar*) ;
 int nvc0_vm_flush_engine (int ,int ,int) ;

__attribute__((used)) static void
nvc0_bar_unmap(struct nouveau_bar *bar, struct nouveau_vma *vma)
{
 struct nvc0_bar_priv *priv = (void *)bar;
 int i = !(vma->vm == priv->bar[0].vm);

 nouveau_vm_unmap(vma);
 nvc0_vm_flush_engine(nv_subdev(bar), priv->bar[i].pgd->addr, 5);
 nouveau_vm_put(vma);
}
