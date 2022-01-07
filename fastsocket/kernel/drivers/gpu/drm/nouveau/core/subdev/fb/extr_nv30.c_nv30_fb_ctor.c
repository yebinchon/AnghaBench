
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int regions; int prog; int fini; int comp; int init; } ;
struct TYPE_4__ {int init; } ;
struct TYPE_6__ {TYPE_2__ tile; TYPE_1__ ram; int memtype_valid; } ;
struct nv30_fb_priv {TYPE_3__ base; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_fb_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nv30_fb_priv**) ;
 int nouveau_fb_preinit (TYPE_3__*) ;
 int nv04_fb_memtype_valid ;
 int nv20_fb_tile_fini ;
 int nv20_fb_tile_prog ;
 int nv20_fb_vram_init ;
 int nv30_fb_tile_comp ;
 int nv30_fb_tile_init ;
 struct nouveau_object* nv_object (struct nv30_fb_priv*) ;

__attribute__((used)) static int
nv30_fb_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
      struct nouveau_oclass *oclass, void *data, u32 size,
      struct nouveau_object **pobject)
{
 struct nv30_fb_priv *priv;
 int ret;

 ret = nouveau_fb_create(parent, engine, oclass, &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 priv->base.memtype_valid = nv04_fb_memtype_valid;
 priv->base.ram.init = nv20_fb_vram_init;
 priv->base.tile.regions = 8;
 priv->base.tile.init = nv30_fb_tile_init;
 priv->base.tile.comp = nv30_fb_tile_comp;
 priv->base.tile.fini = nv20_fb_tile_fini;
 priv->base.tile.prog = nv20_fb_tile_prog;
 return nouveau_fb_preinit(&priv->base);
}
