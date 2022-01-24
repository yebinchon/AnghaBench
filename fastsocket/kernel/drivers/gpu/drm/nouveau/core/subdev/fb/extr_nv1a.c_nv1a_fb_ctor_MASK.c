#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int regions; int /*<<< orphan*/  prog; int /*<<< orphan*/  fini; int /*<<< orphan*/  init; } ;
struct TYPE_4__ {int /*<<< orphan*/  init; } ;
struct TYPE_6__ {TYPE_2__ tile; TYPE_1__ ram; int /*<<< orphan*/  memtype_valid; } ;
struct nv1a_fb_priv {TYPE_3__ base; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nv1a_fb_priv**) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  nv04_fb_memtype_valid ; 
 int /*<<< orphan*/  nv10_fb_tile_fini ; 
 int /*<<< orphan*/  nv10_fb_tile_init ; 
 int /*<<< orphan*/  nv10_fb_tile_prog ; 
 int /*<<< orphan*/  nv1a_fb_vram_init ; 
 struct nouveau_object* FUNC2 (struct nv1a_fb_priv*) ; 

__attribute__((used)) static int
FUNC3(struct nouveau_object *parent, struct nouveau_object *engine,
	     struct nouveau_oclass *oclass, void *data, u32 size,
	     struct nouveau_object **pobject)
{
	struct nv1a_fb_priv *priv;
	int ret;

	ret = FUNC0(parent, engine, oclass, &priv);
	*pobject = FUNC2(priv);
	if (ret)
		return ret;

	priv->base.memtype_valid = nv04_fb_memtype_valid;
	priv->base.ram.init = nv1a_fb_vram_init;
	priv->base.tile.regions = 8;
	priv->base.tile.init = nv10_fb_tile_init;
	priv->base.tile.fini = nv10_fb_tile_fini;
	priv->base.tile.prog = nv10_fb_tile_prog;
	return FUNC1(&priv->base);
}