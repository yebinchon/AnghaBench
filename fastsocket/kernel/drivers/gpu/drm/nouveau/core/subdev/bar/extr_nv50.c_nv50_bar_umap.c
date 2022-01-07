
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nv50_bar_priv {int bar1_vm; } ;
struct nouveau_vma {int dummy; } ;
struct nouveau_mem {int size; } ;
struct nouveau_bar {int dummy; } ;


 int nouveau_vm_get (int ,int,int,int ,struct nouveau_vma*) ;
 int nouveau_vm_map (struct nouveau_vma*,struct nouveau_mem*) ;
 int nv50_vm_flush_engine (int ,int) ;
 int nv_subdev (struct nouveau_bar*) ;

__attribute__((used)) static int
nv50_bar_umap(struct nouveau_bar *bar, struct nouveau_mem *mem,
       u32 flags, struct nouveau_vma *vma)
{
 struct nv50_bar_priv *priv = (void *)bar;
 int ret;

 ret = nouveau_vm_get(priv->bar1_vm, mem->size << 12, 12, flags, vma);
 if (ret)
  return ret;

 nouveau_vm_map(vma, mem);
 nv50_vm_flush_engine(nv_subdev(bar), 6);
 return 0;
}
