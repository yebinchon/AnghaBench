
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nv50_fifo_priv {int dummy; } ;
struct TYPE_2__ {int chid; } ;
struct nv50_fifo_chan {TYPE_1__ base; } ;
struct nv50_fifo_base {struct nouveau_gpuobj* ramfc; } ;
struct nouveau_object {scalar_t__ parent; scalar_t__ engine; } ;
struct nouveau_gpuobj {int addr; } ;


 int nouveau_fifo_channel_init (TYPE_1__*) ;
 int nv50_fifo_playlist_update (struct nv50_fifo_priv*) ;
 int nv_wr32 (struct nv50_fifo_priv*,int,int) ;

__attribute__((used)) static int
nv84_fifo_chan_init(struct nouveau_object *object)
{
 struct nv50_fifo_priv *priv = (void *)object->engine;
 struct nv50_fifo_base *base = (void *)object->parent;
 struct nv50_fifo_chan *chan = (void *)object;
 struct nouveau_gpuobj *ramfc = base->ramfc;
 u32 chid = chan->base.chid;
 int ret;

 ret = nouveau_fifo_channel_init(&chan->base);
 if (ret)
  return ret;

 nv_wr32(priv, 0x002600 + (chid * 4), 0x80000000 | ramfc->addr >> 8);
 nv50_fifo_playlist_update(priv);
 return 0;
}
