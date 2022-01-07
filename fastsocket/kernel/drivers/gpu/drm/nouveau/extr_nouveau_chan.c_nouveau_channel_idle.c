
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_fence {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct nouveau_cli {TYPE_1__ base; } ;
struct nouveau_channel {int handle; struct nouveau_cli* cli; } ;


 int NV_ERROR (struct nouveau_cli*,char*,int ,int ) ;
 int nouveau_fence_new (struct nouveau_channel*,int,struct nouveau_fence**) ;
 int nouveau_fence_unref (struct nouveau_fence**) ;
 int nouveau_fence_wait (struct nouveau_fence*,int,int) ;

int
nouveau_channel_idle(struct nouveau_channel *chan)
{
 struct nouveau_cli *cli = chan->cli;
 struct nouveau_fence *fence = ((void*)0);
 int ret;

 ret = nouveau_fence_new(chan, 0, &fence);
 if (!ret) {
  ret = nouveau_fence_wait(fence, 0, 0);
  nouveau_fence_unref(&fence);
 }

 if (ret)
  NV_ERROR(cli, "failed to idle channel 0x%08x [%s]\n",
    chan->handle, cli->base.name);
 return ret;
}
