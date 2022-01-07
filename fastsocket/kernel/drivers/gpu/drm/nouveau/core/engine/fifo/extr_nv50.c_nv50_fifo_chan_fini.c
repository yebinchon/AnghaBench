
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nv50_fifo_priv {int dummy; } ;
struct TYPE_2__ {int chid; } ;
struct nv50_fifo_chan {TYPE_1__ base; } ;
struct nouveau_object {scalar_t__ engine; } ;


 int nouveau_fifo_channel_fini (TYPE_1__*,int) ;
 int nv50_fifo_playlist_update (struct nv50_fifo_priv*) ;
 int nv_mask (struct nv50_fifo_priv*,int,int,int) ;
 int nv_wr32 (struct nv50_fifo_priv*,int,int) ;

int
nv50_fifo_chan_fini(struct nouveau_object *object, bool suspend)
{
 struct nv50_fifo_priv *priv = (void *)object->engine;
 struct nv50_fifo_chan *chan = (void *)object;
 u32 chid = chan->base.chid;


 nv_mask(priv, 0x002600 + (chid * 4), 0x80000000, 0x00000000);
 nv50_fifo_playlist_update(priv);
 nv_wr32(priv, 0x002600 + (chid * 4), 0x00000000);

 return nouveau_fifo_channel_fini(&chan->base, suspend);
}
