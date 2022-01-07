
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_vma {int dummy; } ;
struct nouveau_mem {int dummy; } ;
struct nouveau_instobj {int dummy; } ;
struct nouveau_gpuobj {int dummy; } ;
struct nouveau_bar {int (* umap ) (struct nouveau_bar*,struct nouveau_mem*,int ,struct nouveau_vma*) ;} ;


 int EINVAL ;
 int NV_MEMOBJ_CLASS ;
 struct nouveau_bar* nouveau_bar (struct nouveau_gpuobj*) ;
 int nv_object (struct nouveau_gpuobj*) ;
 scalar_t__ nv_pclass (int ,int ) ;
 int stub1 (struct nouveau_bar*,struct nouveau_mem*,int ,struct nouveau_vma*) ;

int
nouveau_gpuobj_map(struct nouveau_gpuobj *gpuobj, u32 access,
     struct nouveau_vma *vma)
{
 struct nouveau_bar *bar = nouveau_bar(gpuobj);
 int ret = -EINVAL;

 if (bar && bar->umap) {
  struct nouveau_instobj *iobj = (void *)
   nv_pclass(nv_object(gpuobj), NV_MEMOBJ_CLASS);
  struct nouveau_mem **mem = (void *)(iobj + 1);
  ret = bar->umap(bar, *mem, access, vma);
 }

 return ret;
}
