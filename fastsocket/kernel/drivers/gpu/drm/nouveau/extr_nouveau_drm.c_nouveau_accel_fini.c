
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_drm {scalar_t__ fence; int cechan; int channel; int notify; } ;
struct TYPE_2__ {int (* dtor ) (struct nouveau_drm*) ;} ;


 int nouveau_channel_del (int *) ;
 TYPE_1__* nouveau_fence (struct nouveau_drm*) ;
 int nouveau_gpuobj_ref (int *,int *) ;
 int stub1 (struct nouveau_drm*) ;

__attribute__((used)) static void
nouveau_accel_fini(struct nouveau_drm *drm)
{
 nouveau_gpuobj_ref(((void*)0), &drm->notify);
 nouveau_channel_del(&drm->channel);
 nouveau_channel_del(&drm->cechan);
 if (drm->fence)
  nouveau_fence(drm)->dtor(drm);
}
