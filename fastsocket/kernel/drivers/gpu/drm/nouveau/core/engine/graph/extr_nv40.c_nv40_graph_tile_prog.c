
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nv40_graph_priv {int dummy; } ;
struct nouveau_fifo {int (* start ) (struct nouveau_fifo*,unsigned long*) ;int (* pause ) (struct nouveau_fifo*,unsigned long*) ;} ;
struct nouveau_fb_tile {int zcomp; int addr; int limit; int pitch; } ;
struct nouveau_engine {int dummy; } ;
struct TYPE_4__ {struct nouveau_fb_tile* region; } ;
struct TYPE_6__ {TYPE_1__ tile; } ;
struct TYPE_5__ {int chipset; } ;


 int NV20_PGRAPH_TILE (int) ;
 int NV20_PGRAPH_TLIMIT (int) ;
 int NV20_PGRAPH_TSIZE (int) ;
 int NV20_PGRAPH_ZCOMP (int) ;
 int NV40_PGRAPH_TILE1 (int) ;
 int NV40_PGRAPH_TLIMIT1 (int) ;
 int NV40_PGRAPH_TSIZE1 (int) ;
 int NV40_PGRAPH_ZCOMP1 (int) ;
 int NV41_PGRAPH_ZCOMP0 (int) ;
 int NV41_PGRAPH_ZCOMP1 (int) ;
 int NV47_PGRAPH_TILE (int) ;
 int NV47_PGRAPH_TLIMIT (int) ;
 int NV47_PGRAPH_TSIZE (int) ;
 int NV47_PGRAPH_ZCOMP0 (int) ;
 int NV47_PGRAPH_ZCOMP1 (int) ;
 TYPE_3__* nouveau_fb (struct nouveau_engine*) ;
 struct nouveau_fifo* nouveau_fifo (struct nouveau_engine*) ;
 int nv04_graph_idle (struct nv40_graph_priv*) ;
 TYPE_2__* nv_device (struct nv40_graph_priv*) ;
 int nv_wr32 (struct nv40_graph_priv*,int ,int ) ;
 int stub1 (struct nouveau_fifo*,unsigned long*) ;
 int stub2 (struct nouveau_fifo*,unsigned long*) ;

__attribute__((used)) static void
nv40_graph_tile_prog(struct nouveau_engine *engine, int i)
{
 struct nouveau_fb_tile *tile = &nouveau_fb(engine)->tile.region[i];
 struct nouveau_fifo *pfifo = nouveau_fifo(engine);
 struct nv40_graph_priv *priv = (void *)engine;
 unsigned long flags;

 pfifo->pause(pfifo, &flags);
 nv04_graph_idle(priv);

 switch (nv_device(priv)->chipset) {
 case 0x40:
 case 0x41:
 case 0x42:
 case 0x43:
 case 0x45:
 case 0x4e:
  nv_wr32(priv, NV20_PGRAPH_TSIZE(i), tile->pitch);
  nv_wr32(priv, NV20_PGRAPH_TLIMIT(i), tile->limit);
  nv_wr32(priv, NV20_PGRAPH_TILE(i), tile->addr);
  nv_wr32(priv, NV40_PGRAPH_TSIZE1(i), tile->pitch);
  nv_wr32(priv, NV40_PGRAPH_TLIMIT1(i), tile->limit);
  nv_wr32(priv, NV40_PGRAPH_TILE1(i), tile->addr);
  switch (nv_device(priv)->chipset) {
  case 0x40:
  case 0x45:
   nv_wr32(priv, NV20_PGRAPH_ZCOMP(i), tile->zcomp);
   nv_wr32(priv, NV40_PGRAPH_ZCOMP1(i), tile->zcomp);
   break;
  case 0x41:
  case 0x42:
  case 0x43:
   nv_wr32(priv, NV41_PGRAPH_ZCOMP0(i), tile->zcomp);
   nv_wr32(priv, NV41_PGRAPH_ZCOMP1(i), tile->zcomp);
   break;
  default:
   break;
  }
  break;
 case 0x44:
 case 0x4a:
  nv_wr32(priv, NV20_PGRAPH_TSIZE(i), tile->pitch);
  nv_wr32(priv, NV20_PGRAPH_TLIMIT(i), tile->limit);
  nv_wr32(priv, NV20_PGRAPH_TILE(i), tile->addr);
  break;
 case 0x46:
 case 0x4c:
 case 0x47:
 case 0x49:
 case 0x4b:
 case 0x63:
 case 0x67:
 case 0x68:
  nv_wr32(priv, NV47_PGRAPH_TSIZE(i), tile->pitch);
  nv_wr32(priv, NV47_PGRAPH_TLIMIT(i), tile->limit);
  nv_wr32(priv, NV47_PGRAPH_TILE(i), tile->addr);
  nv_wr32(priv, NV40_PGRAPH_TSIZE1(i), tile->pitch);
  nv_wr32(priv, NV40_PGRAPH_TLIMIT1(i), tile->limit);
  nv_wr32(priv, NV40_PGRAPH_TILE1(i), tile->addr);
  switch (nv_device(priv)->chipset) {
  case 0x47:
  case 0x49:
  case 0x4b:
   nv_wr32(priv, NV47_PGRAPH_ZCOMP0(i), tile->zcomp);
   nv_wr32(priv, NV47_PGRAPH_ZCOMP1(i), tile->zcomp);
   break;
  default:
   break;
  }
  break;
 default:
  break;
 }

 pfifo->start(pfifo, &flags);
}
