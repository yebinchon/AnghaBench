#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct nv20_graph_priv {int /*<<< orphan*/  ctxtab; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  tile_prog; int /*<<< orphan*/  sclass; int /*<<< orphan*/ * cclass; } ;
struct TYPE_3__ {int unit; int /*<<< orphan*/  intr; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVOBJ_FLAG_ZERO_ALLOC ; 
 int FUNC0 (struct nouveau_object*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,struct nv20_graph_priv**) ; 
 int /*<<< orphan*/  nv20_graph_intr ; 
 int /*<<< orphan*/  nv20_graph_tile_prog ; 
 int /*<<< orphan*/  nv30_graph_cclass ; 
 int /*<<< orphan*/  nv30_graph_sclass ; 
 TYPE_2__* FUNC2 (struct nv20_graph_priv*) ; 
 struct nouveau_object* FUNC3 (struct nv20_graph_priv*) ; 
 TYPE_1__* FUNC4 (struct nv20_graph_priv*) ; 

__attribute__((used)) static int
FUNC5(struct nouveau_object *parent, struct nouveau_object *engine,
	       struct nouveau_oclass *oclass, void *data, u32 size,
	       struct nouveau_object **pobject)
{
	struct nv20_graph_priv *priv;
	int ret;

	ret = FUNC1(parent, engine, oclass, true, &priv);
	*pobject = FUNC3(priv);
	if (ret)
		return ret;

	ret = FUNC0(parent, NULL, 32 * 4, 16,
				 NVOBJ_FLAG_ZERO_ALLOC, &priv->ctxtab);
	if (ret)
		return ret;

	FUNC4(priv)->unit = 0x00001000;
	FUNC4(priv)->intr = nv20_graph_intr;
	FUNC2(priv)->cclass = &nv30_graph_cclass;
	FUNC2(priv)->sclass = nv30_graph_sclass;
	FUNC2(priv)->tile_prog = nv20_graph_tile_prog;
	return 0;
}