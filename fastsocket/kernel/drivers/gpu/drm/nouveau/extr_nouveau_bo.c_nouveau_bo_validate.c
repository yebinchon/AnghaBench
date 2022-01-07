
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_bo {int placement; int bo; } ;


 int ttm_bo_validate (int *,int *,int,int) ;

int
nouveau_bo_validate(struct nouveau_bo *nvbo, bool interruptible,
      bool no_wait_gpu)
{
 int ret;

 ret = ttm_bo_validate(&nvbo->bo, &nvbo->placement,
         interruptible, no_wait_gpu);
 if (ret)
  return ret;

 return 0;
}
