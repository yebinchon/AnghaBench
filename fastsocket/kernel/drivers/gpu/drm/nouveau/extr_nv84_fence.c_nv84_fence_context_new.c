
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nv84_fence_priv {struct nouveau_bo* bo; struct nouveau_bo* bo_gart; } ;
struct TYPE_8__ {int sync32; int emit32; int read; int sync; int emit; } ;
struct nv84_fence_chan {int * dispc_vma; int vma_gart; int vma; TYPE_4__ base; } ;
struct nouveau_fifo_chan {int chid; } ;
struct nouveau_client {int vm; } ;
struct nouveau_channel {TYPE_2__* drm; struct nv84_fence_chan* fence; scalar_t__ object; } ;
struct nouveau_bo {int dummy; } ;
struct TYPE_5__ {int num_crtc; } ;
struct TYPE_7__ {TYPE_1__ mode_config; } ;
struct TYPE_6__ {TYPE_3__* dev; struct nv84_fence_priv* fence; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nv84_fence_chan* kzalloc (int,int ) ;
 int nouveau_bo_vma_add (struct nouveau_bo*,int ,int *) ;
 int nouveau_bo_wr32 (struct nouveau_bo*,int,int) ;
 struct nouveau_client* nouveau_client (struct nouveau_fifo_chan*) ;
 int nouveau_fence_context_new (TYPE_4__*) ;
 struct nouveau_bo* nv50_display_crtc_sema (TYPE_3__*,int) ;
 int nv84_fence_context_del (struct nouveau_channel*) ;
 int nv84_fence_emit ;
 int nv84_fence_emit32 ;
 int nv84_fence_read ;
 int nv84_fence_sync ;
 int nv84_fence_sync32 ;

int
nv84_fence_context_new(struct nouveau_channel *chan)
{
 struct nouveau_fifo_chan *fifo = (void *)chan->object;
 struct nouveau_client *client = nouveau_client(fifo);
 struct nv84_fence_priv *priv = chan->drm->fence;
 struct nv84_fence_chan *fctx;
 int ret, i;

 fctx = chan->fence = kzalloc(sizeof(*fctx), GFP_KERNEL);
 if (!fctx)
  return -ENOMEM;

 nouveau_fence_context_new(&fctx->base);
 fctx->base.emit = nv84_fence_emit;
 fctx->base.sync = nv84_fence_sync;
 fctx->base.read = nv84_fence_read;
 fctx->base.emit32 = nv84_fence_emit32;
 fctx->base.sync32 = nv84_fence_sync32;

 ret = nouveau_bo_vma_add(priv->bo, client->vm, &fctx->vma);
 if (ret == 0) {
  ret = nouveau_bo_vma_add(priv->bo_gart, client->vm,
     &fctx->vma_gart);
 }


 for (i = 0; !ret && i < chan->drm->dev->mode_config.num_crtc; i++) {
  struct nouveau_bo *bo = nv50_display_crtc_sema(chan->drm->dev, i);
  ret = nouveau_bo_vma_add(bo, client->vm, &fctx->dispc_vma[i]);
 }

 nouveau_bo_wr32(priv->bo, fifo->chid * 16/4, 0x00000000);

 if (ret)
  nv84_fence_context_del(chan);
 return ret;
}
