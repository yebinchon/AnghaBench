
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nouveau_fence_done (void*) ;

__attribute__((used)) static bool
nouveau_bo_fence_signalled(void *sync_obj)
{
 return nouveau_fence_done(sync_obj);
}
