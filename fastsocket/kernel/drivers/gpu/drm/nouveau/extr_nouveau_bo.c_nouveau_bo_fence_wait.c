
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nouveau_fence_wait (void*,int,int) ;

__attribute__((used)) static int
nouveau_bo_fence_wait(void *sync_obj, bool lazy, bool intr)
{
 return nouveau_fence_wait(sync_obj, lazy, intr);
}
