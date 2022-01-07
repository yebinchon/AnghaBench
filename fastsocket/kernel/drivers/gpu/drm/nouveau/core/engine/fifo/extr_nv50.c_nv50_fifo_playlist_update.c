
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int min; int max; } ;
struct nv50_fifo_priv {size_t cur_playlist; TYPE_1__ base; struct nouveau_gpuobj** playlist; } ;
struct nouveau_gpuobj {int addr; } ;
struct nouveau_bar {int (* flush ) (struct nouveau_bar*) ;} ;


 struct nouveau_bar* nouveau_bar (struct nv50_fifo_priv*) ;
 int nv_rd32 (struct nv50_fifo_priv*,int) ;
 int nv_wo32 (struct nouveau_gpuobj*,int,int) ;
 int nv_wr32 (struct nv50_fifo_priv*,int,int) ;
 int stub1 (struct nouveau_bar*) ;

void
nv50_fifo_playlist_update(struct nv50_fifo_priv *priv)
{
 struct nouveau_bar *bar = nouveau_bar(priv);
 struct nouveau_gpuobj *cur;
 int i, p;

 cur = priv->playlist[priv->cur_playlist];
 priv->cur_playlist = !priv->cur_playlist;

 for (i = priv->base.min, p = 0; i < priv->base.max; i++) {
  if (nv_rd32(priv, 0x002600 + (i * 4)) & 0x80000000)
   nv_wo32(cur, p++ * 4, i);
 }

 bar->flush(bar);

 nv_wr32(priv, 0x0032f4, cur->addr >> 12);
 nv_wr32(priv, 0x0032ec, p);
 nv_wr32(priv, 0x002500, 0x00000101);
}
