
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_fence {int kref; } ;


 int kref_get (int *) ;

struct nouveau_fence *
nouveau_fence_ref(struct nouveau_fence *fence)
{
 kref_get(&fence->kref);
 return fence;
}
