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
struct nv10_graph_priv {int /*<<< orphan*/  lock; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_6__ {int chipset; } ;
struct TYPE_5__ {int /*<<< orphan*/  tile_prog; int /*<<< orphan*/  sclass; int /*<<< orphan*/ * cclass; } ;
struct TYPE_4__ {int unit; int /*<<< orphan*/  intr; } ;

/* Variables and functions */
 int FUNC0 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,struct nv10_graph_priv**) ; 
 int /*<<< orphan*/  nv10_graph_cclass ; 
 int /*<<< orphan*/  nv10_graph_intr ; 
 int /*<<< orphan*/  nv10_graph_sclass ; 
 int /*<<< orphan*/  nv10_graph_tile_prog ; 
 int /*<<< orphan*/  nv15_graph_sclass ; 
 int /*<<< orphan*/  nv17_graph_sclass ; 
 TYPE_3__* FUNC1 (struct nv10_graph_priv*) ; 
 TYPE_2__* FUNC2 (struct nv10_graph_priv*) ; 
 struct nouveau_object* FUNC3 (struct nv10_graph_priv*) ; 
 TYPE_1__* FUNC4 (struct nv10_graph_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct nouveau_object *parent, struct nouveau_object *engine,
		struct nouveau_oclass *oclass, void *data, u32 size,
		struct nouveau_object **pobject)
{
	struct nv10_graph_priv *priv;
	int ret;

	ret = FUNC0(parent, engine, oclass, true, &priv);
	*pobject = FUNC3(priv);
	if (ret)
		return ret;

	FUNC4(priv)->unit = 0x00001000;
	FUNC4(priv)->intr = nv10_graph_intr;
	FUNC2(priv)->cclass = &nv10_graph_cclass;

	if (FUNC1(priv)->chipset <= 0x10)
		FUNC2(priv)->sclass = nv10_graph_sclass;
	else
	if (FUNC1(priv)->chipset <  0x17 ||
	    FUNC1(priv)->chipset == 0x1a)
		FUNC2(priv)->sclass = nv15_graph_sclass;
	else
		FUNC2(priv)->sclass = nv17_graph_sclass;

	FUNC2(priv)->tile_prog = nv10_graph_tile_prog;
	FUNC5(&priv->lock);
	return 0;
}