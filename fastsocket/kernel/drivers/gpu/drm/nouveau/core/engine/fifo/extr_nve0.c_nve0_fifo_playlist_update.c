
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {int max; } ;
struct nve0_fifo_priv {TYPE_1__ base; struct nve0_fifo_engn* engine; } ;
struct nve0_fifo_engn {size_t cur_playlist; struct nouveau_gpuobj** playlist; } ;
struct nouveau_gpuobj {int addr; } ;
struct nouveau_bar {int (* flush ) (struct nouveau_bar*) ;} ;
struct TYPE_4__ {int parent; } ;


 struct nouveau_bar* nouveau_bar (struct nve0_fifo_priv*) ;
 int nouveau_gpuobj_new (int ,int *,int,int,int ,struct nouveau_gpuobj**) ;
 int nv_error (struct nve0_fifo_priv*,char*,...) ;
 TYPE_2__* nv_object (struct nve0_fifo_priv*) ;
 int nv_rd32 (struct nve0_fifo_priv*,int) ;
 int nv_wait (struct nve0_fifo_priv*,int,int,int) ;
 int nv_wo32 (struct nouveau_gpuobj*,int,int) ;
 int nv_wr32 (struct nve0_fifo_priv*,int,size_t) ;
 int stub1 (struct nouveau_bar*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void
nve0_fifo_playlist_update(struct nve0_fifo_priv *priv, u32 engine)
{
 struct nouveau_bar *bar = nouveau_bar(priv);
 struct nve0_fifo_engn *engn = &priv->engine[engine];
 struct nouveau_gpuobj *cur;
 u32 match = (engine << 16) | 0x00000001;
 int i, p;

 cur = engn->playlist[engn->cur_playlist];
 if (unlikely(cur == ((void*)0))) {
  int ret = nouveau_gpuobj_new(nv_object(priv)->parent, ((void*)0),
          0x8000, 0x1000, 0, &cur);
  if (ret) {
   nv_error(priv, "playlist alloc failed\n");
   return;
  }

  engn->playlist[engn->cur_playlist] = cur;
 }

 engn->cur_playlist = !engn->cur_playlist;

 for (i = 0, p = 0; i < priv->base.max; i++) {
  u32 ctrl = nv_rd32(priv, 0x800004 + (i * 8)) & 0x001f0001;
  if (ctrl != match)
   continue;
  nv_wo32(cur, p + 0, i);
  nv_wo32(cur, p + 4, 0x00000000);
  p += 8;
 }
 bar->flush(bar);

 nv_wr32(priv, 0x002270, cur->addr >> 12);
 nv_wr32(priv, 0x002274, (engine << 20) | (p >> 3));
 if (!nv_wait(priv, 0x002284 + (engine * 4), 0x00100000, 0x00000000))
  nv_error(priv, "playlist %d update timeout\n", engine);
}
