
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct nouveau_object {int dummy; } ;
struct TYPE_7__ {TYPE_3__* buffer; int vma; int handle; } ;
struct nouveau_channel {TYPE_1__ push; int handle; int drm; scalar_t__ fence; int cli; } ;
struct TYPE_9__ {scalar_t__ pin_refcnt; } ;
struct TYPE_8__ {int (* context_del ) (struct nouveau_channel*) ;} ;


 int NVDRM_DEVICE ;
 int kfree (struct nouveau_channel*) ;
 int nouveau_bo_ref (int *,TYPE_3__**) ;
 int nouveau_bo_unmap (TYPE_3__*) ;
 int nouveau_bo_unpin (TYPE_3__*) ;
 int nouveau_bo_vma_del (TYPE_3__*,int *) ;
 int nouveau_channel_idle (struct nouveau_channel*) ;
 TYPE_2__* nouveau_fence (int ) ;
 int nouveau_object_del (struct nouveau_object*,int ,int ) ;
 struct nouveau_object* nv_object (int ) ;
 int stub1 (struct nouveau_channel*) ;

void
nouveau_channel_del(struct nouveau_channel **pchan)
{
 struct nouveau_channel *chan = *pchan;
 if (chan) {
  struct nouveau_object *client = nv_object(chan->cli);
  if (chan->fence) {
   nouveau_channel_idle(chan);
   nouveau_fence(chan->drm)->context_del(chan);
  }
  nouveau_object_del(client, NVDRM_DEVICE, chan->handle);
  nouveau_object_del(client, NVDRM_DEVICE, chan->push.handle);
  nouveau_bo_vma_del(chan->push.buffer, &chan->push.vma);
  nouveau_bo_unmap(chan->push.buffer);
  if (chan->push.buffer && chan->push.buffer->pin_refcnt)
   nouveau_bo_unpin(chan->push.buffer);
  nouveau_bo_ref(((void*)0), &chan->push.buffer);
  kfree(chan);
 }
 *pchan = ((void*)0);
}
