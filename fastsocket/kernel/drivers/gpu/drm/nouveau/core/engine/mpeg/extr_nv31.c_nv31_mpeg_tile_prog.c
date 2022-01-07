
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nv31_mpeg_priv {int dummy; } ;
struct nouveau_fb_tile {int addr; int limit; int pitch; } ;
struct nouveau_engine {int dummy; } ;
struct TYPE_3__ {struct nouveau_fb_tile* region; } ;
struct TYPE_4__ {TYPE_1__ tile; } ;


 TYPE_2__* nouveau_fb (struct nouveau_engine*) ;
 int nv_wr32 (struct nv31_mpeg_priv*,int,int ) ;

void
nv31_mpeg_tile_prog(struct nouveau_engine *engine, int i)
{
 struct nouveau_fb_tile *tile = &nouveau_fb(engine)->tile.region[i];
 struct nv31_mpeg_priv *priv = (void *)engine;

 nv_wr32(priv, 0x00b008 + (i * 0x10), tile->pitch);
 nv_wr32(priv, 0x00b004 + (i * 0x10), tile->limit);
 nv_wr32(priv, 0x00b000 + (i * 0x10), tile->addr);
}
