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
struct nv04_instmem_priv {int /*<<< orphan*/  ramfc; int /*<<< orphan*/  ramro; int /*<<< orphan*/  ramht; } ;
struct TYPE_4__ {int /*<<< orphan*/  start; int /*<<< orphan*/  pause; } ;
struct nv04_fifo_priv {int /*<<< orphan*/  ramfc_desc; TYPE_1__ base; int /*<<< orphan*/  ramfc; int /*<<< orphan*/  ramro; int /*<<< orphan*/  ramht; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  sclass; int /*<<< orphan*/ * cclass; } ;
struct TYPE_5__ {int unit; int /*<<< orphan*/  intr; } ;

/* Variables and functions */
 int FUNC0 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int /*<<< orphan*/ ,int,struct nv04_fifo_priv**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nv04_fifo_intr ; 
 int /*<<< orphan*/  nv04_fifo_pause ; 
 int /*<<< orphan*/  nv04_fifo_start ; 
 struct nv04_instmem_priv* FUNC3 (struct nouveau_object*) ; 
 int /*<<< orphan*/  nv10_fifo_cclass ; 
 int /*<<< orphan*/  nv10_fifo_sclass ; 
 int /*<<< orphan*/  nv10_ramfc ; 
 TYPE_3__* FUNC4 (struct nv04_fifo_priv*) ; 
 struct nouveau_object* FUNC5 (struct nv04_fifo_priv*) ; 
 TYPE_2__* FUNC6 (struct nv04_fifo_priv*) ; 

__attribute__((used)) static int
FUNC7(struct nouveau_object *parent, struct nouveau_object *engine,
	       struct nouveau_oclass *oclass, void *data, u32 size,
	       struct nouveau_object **pobject)
{
	struct nv04_instmem_priv *imem = FUNC3(parent);
	struct nv04_fifo_priv *priv;
	int ret;

	ret = FUNC0(parent, engine, oclass, 0, 31, &priv);
	*pobject = FUNC5(priv);
	if (ret)
		return ret;

	FUNC2(imem->ramht, &priv->ramht);
	FUNC1(imem->ramro, &priv->ramro);
	FUNC1(imem->ramfc, &priv->ramfc);

	FUNC6(priv)->unit = 0x00000100;
	FUNC6(priv)->intr = nv04_fifo_intr;
	FUNC4(priv)->cclass = &nv10_fifo_cclass;
	FUNC4(priv)->sclass = nv10_fifo_sclass;
	priv->base.pause = nv04_fifo_pause;
	priv->base.start = nv04_fifo_start;
	priv->ramfc_desc = nv10_ramfc;
	return 0;
}