
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct nv84_fence_chan {TYPE_1__* dispc_vma; } ;
struct nouveau_channel {struct nv84_fence_chan* fence; } ;
struct TYPE_2__ {int offset; } ;



u64
nv84_fence_crtc(struct nouveau_channel *chan, int crtc)
{
 struct nv84_fence_chan *fctx = chan->fence;
 return fctx->dispc_vma[crtc].offset;
}
