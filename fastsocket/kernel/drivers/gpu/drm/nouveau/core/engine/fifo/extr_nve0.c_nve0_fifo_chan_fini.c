
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nve0_fifo_priv {int dummy; } ;
struct TYPE_2__ {int chid; } ;
struct nve0_fifo_chan {TYPE_1__ base; int engine; } ;
struct nouveau_object {scalar_t__ engine; } ;


 int nouveau_fifo_channel_fini (TYPE_1__*,int) ;
 int nv_mask (struct nve0_fifo_priv*,int,int,int) ;
 int nv_wr32 (struct nve0_fifo_priv*,int,int) ;
 int nve0_fifo_playlist_update (struct nve0_fifo_priv*,int ) ;

__attribute__((used)) static int
nve0_fifo_chan_fini(struct nouveau_object *object, bool suspend)
{
 struct nve0_fifo_priv *priv = (void *)object->engine;
 struct nve0_fifo_chan *chan = (void *)object;
 u32 chid = chan->base.chid;

 nv_mask(priv, 0x800004 + (chid * 8), 0x00000800, 0x00000800);
 nve0_fifo_playlist_update(priv, chan->engine);
 nv_wr32(priv, 0x800000 + (chid * 8), 0x00000000);

 return nouveau_fifo_channel_fini(&chan->base, suspend);
}
