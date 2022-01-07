
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* nouveau_fence_ref (void*) ;

__attribute__((used)) static void *
nouveau_bo_fence_ref(void *sync_obj)
{
 return nouveau_fence_ref(sync_obj);
}
