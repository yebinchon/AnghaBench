
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nv10_graph_priv {int dummy; } ;
struct nouveau_fifo {int (* start ) (struct nouveau_fifo*,unsigned long*) ;int (* pause ) (struct nouveau_fifo*,unsigned long*) ;} ;
struct nouveau_fb_tile {int addr; int pitch; int limit; } ;
struct nouveau_engine {int dummy; } ;
struct TYPE_3__ {struct nouveau_fb_tile* region; } ;
struct TYPE_4__ {TYPE_1__ tile; } ;


 int NV10_PGRAPH_TILE (int) ;
 int NV10_PGRAPH_TLIMIT (int) ;
 int NV10_PGRAPH_TSIZE (int) ;
 TYPE_2__* nouveau_fb (struct nouveau_engine*) ;
 struct nouveau_fifo* nouveau_fifo (struct nouveau_engine*) ;
 int nv04_graph_idle (struct nv10_graph_priv*) ;
 int nv_wr32 (struct nv10_graph_priv*,int ,int ) ;
 int stub1 (struct nouveau_fifo*,unsigned long*) ;
 int stub2 (struct nouveau_fifo*,unsigned long*) ;

__attribute__((used)) static void
nv10_graph_tile_prog(struct nouveau_engine *engine, int i)
{
 struct nouveau_fb_tile *tile = &nouveau_fb(engine)->tile.region[i];
 struct nouveau_fifo *pfifo = nouveau_fifo(engine);
 struct nv10_graph_priv *priv = (void *)engine;
 unsigned long flags;

 pfifo->pause(pfifo, &flags);
 nv04_graph_idle(priv);

 nv_wr32(priv, NV10_PGRAPH_TLIMIT(i), tile->limit);
 nv_wr32(priv, NV10_PGRAPH_TSIZE(i), tile->pitch);
 nv_wr32(priv, NV10_PGRAPH_TILE(i), tile->addr);

 pfifo->start(pfifo, &flags);
}
