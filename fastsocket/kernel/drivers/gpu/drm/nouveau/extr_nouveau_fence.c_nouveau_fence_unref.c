
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_fence {int kref; } ;


 int kref_put (int *,int ) ;
 int nouveau_fence_del ;

void
nouveau_fence_unref(struct nouveau_fence **pfence)
{
 if (*pfence)
  kref_put(&(*pfence)->kref, nouveau_fence_del);
 *pfence = ((void*)0);
}
