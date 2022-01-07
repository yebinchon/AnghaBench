
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvc0_fifo_priv {size_t cur_playlist; struct nouveau_gpuobj** playlist; } ;
struct nouveau_gpuobj {int addr; } ;
struct nouveau_bar {int (* flush ) (struct nouveau_bar*) ;} ;


 struct nouveau_bar* nouveau_bar (struct nvc0_fifo_priv*) ;
 int nv_error (struct nvc0_fifo_priv*,char*) ;
 int nv_rd32 (struct nvc0_fifo_priv*,int) ;
 int nv_wait (struct nvc0_fifo_priv*,int,int,int) ;
 int nv_wo32 (struct nouveau_gpuobj*,int,int) ;
 int nv_wr32 (struct nvc0_fifo_priv*,int,int) ;
 int stub1 (struct nouveau_bar*) ;

__attribute__((used)) static void
nvc0_fifo_playlist_update(struct nvc0_fifo_priv *priv)
{
 struct nouveau_bar *bar = nouveau_bar(priv);
 struct nouveau_gpuobj *cur;
 int i, p;

 cur = priv->playlist[priv->cur_playlist];
 priv->cur_playlist = !priv->cur_playlist;

 for (i = 0, p = 0; i < 128; i++) {
  if (!(nv_rd32(priv, 0x003004 + (i * 8)) & 1))
   continue;
  nv_wo32(cur, p + 0, i);
  nv_wo32(cur, p + 4, 0x00000004);
  p += 8;
 }
 bar->flush(bar);

 nv_wr32(priv, 0x002270, cur->addr >> 12);
 nv_wr32(priv, 0x002274, 0x01f00000 | (p >> 3));
 if (!nv_wait(priv, 0x00227c, 0x00100000, 0x00000000))
  nv_error(priv, "playlist update failed\n");
}
