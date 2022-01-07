
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvc0_fifo_priv {int dummy; } ;
struct TYPE_2__ {int chid; } ;
struct nvc0_fifo_chan {TYPE_1__ base; } ;
struct nouveau_object {scalar_t__ engine; int parent; } ;
struct nouveau_gpuobj {int addr; } ;


 int nouveau_fifo_channel_init (TYPE_1__*) ;
 struct nouveau_gpuobj* nv_gpuobj (int ) ;
 int nv_wr32 (struct nvc0_fifo_priv*,int,int) ;
 int nvc0_fifo_playlist_update (struct nvc0_fifo_priv*) ;

__attribute__((used)) static int
nvc0_fifo_chan_init(struct nouveau_object *object)
{
 struct nouveau_gpuobj *base = nv_gpuobj(object->parent);
 struct nvc0_fifo_priv *priv = (void *)object->engine;
 struct nvc0_fifo_chan *chan = (void *)object;
 u32 chid = chan->base.chid;
 int ret;

 ret = nouveau_fifo_channel_init(&chan->base);
 if (ret)
  return ret;

 nv_wr32(priv, 0x003000 + (chid * 8), 0xc0000000 | base->addr >> 12);
 nv_wr32(priv, 0x003004 + (chid * 8), 0x001f0001);
 nvc0_fifo_playlist_update(priv);
 return 0;
}
