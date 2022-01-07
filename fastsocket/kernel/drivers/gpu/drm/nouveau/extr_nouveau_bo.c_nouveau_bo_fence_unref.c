
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_fence {int dummy; } ;


 int nouveau_fence_unref (struct nouveau_fence**) ;

__attribute__((used)) static void
nouveau_bo_fence_unref(void **sync_obj)
{
 nouveau_fence_unref((struct nouveau_fence **)sync_obj);
}
