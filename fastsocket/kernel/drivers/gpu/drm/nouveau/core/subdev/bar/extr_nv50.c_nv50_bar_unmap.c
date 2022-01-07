
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_vma {int dummy; } ;
struct nouveau_bar {int dummy; } ;


 int nouveau_vm_put (struct nouveau_vma*) ;
 int nouveau_vm_unmap (struct nouveau_vma*) ;
 int nv50_vm_flush_engine (int ,int) ;
 int nv_subdev (struct nouveau_bar*) ;

__attribute__((used)) static void
nv50_bar_unmap(struct nouveau_bar *bar, struct nouveau_vma *vma)
{
 nouveau_vm_unmap(vma);
 nv50_vm_flush_engine(nv_subdev(bar), 6);
 nouveau_vm_put(vma);
}
