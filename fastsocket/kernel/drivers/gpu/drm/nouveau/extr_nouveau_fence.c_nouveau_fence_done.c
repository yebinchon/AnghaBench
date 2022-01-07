
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_fence {scalar_t__ channel; } ;


 int nouveau_fence_update (scalar_t__) ;

bool
nouveau_fence_done(struct nouveau_fence *fence)
{
 if (fence->channel)
  nouveau_fence_update(fence->channel);
 return !fence->channel;
}
