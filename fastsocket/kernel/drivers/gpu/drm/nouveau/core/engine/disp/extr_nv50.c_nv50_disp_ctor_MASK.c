#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_10__ {int nr; int /*<<< orphan*/ * dp; int /*<<< orphan*/  power; } ;
struct TYPE_9__ {int nr; int /*<<< orphan*/  power; } ;
struct TYPE_8__ {int nr; int /*<<< orphan*/  sense; int /*<<< orphan*/  power; } ;
struct TYPE_7__ {int nr; } ;
struct nv50_disp_priv {TYPE_4__ pior; TYPE_3__ sor; TYPE_2__ dac; TYPE_1__ head; int /*<<< orphan*/  sclass; int /*<<< orphan*/  supervisor; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/ * cclass; int /*<<< orphan*/  sclass; } ;
struct TYPE_11__ {int /*<<< orphan*/  intr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,char*,char*,struct nv50_disp_priv**) ; 
 int /*<<< orphan*/  nv50_dac_power ; 
 int /*<<< orphan*/  nv50_dac_sense ; 
 int /*<<< orphan*/  nv50_disp_base_oclass ; 
 int /*<<< orphan*/  nv50_disp_cclass ; 
 int /*<<< orphan*/  nv50_disp_intr ; 
 int /*<<< orphan*/  nv50_disp_intr_supervisor ; 
 int /*<<< orphan*/  nv50_disp_sclass ; 
 int /*<<< orphan*/  nv50_pior_dp_func ; 
 int /*<<< orphan*/  nv50_pior_power ; 
 int /*<<< orphan*/  nv50_sor_power ; 
 TYPE_6__* FUNC2 (struct nv50_disp_priv*) ; 
 struct nouveau_object* FUNC3 (struct nv50_disp_priv*) ; 
 TYPE_5__* FUNC4 (struct nv50_disp_priv*) ; 

__attribute__((used)) static int
FUNC5(struct nouveau_object *parent, struct nouveau_object *engine,
	       struct nouveau_oclass *oclass, void *data, u32 size,
	       struct nouveau_object **pobject)
{
	struct nv50_disp_priv *priv;
	int ret;

	ret = FUNC1(parent, engine, oclass, 2, "PDISP",
				  "display", &priv);
	*pobject = FUNC3(priv);
	if (ret)
		return ret;

	FUNC2(priv)->sclass = nv50_disp_base_oclass;
	FUNC2(priv)->cclass = &nv50_disp_cclass;
	FUNC4(priv)->intr = nv50_disp_intr;
	FUNC0(&priv->supervisor, nv50_disp_intr_supervisor);
	priv->sclass = nv50_disp_sclass;
	priv->head.nr = 2;
	priv->dac.nr = 3;
	priv->sor.nr = 2;
	priv->pior.nr = 3;
	priv->dac.power = nv50_dac_power;
	priv->dac.sense = nv50_dac_sense;
	priv->sor.power = nv50_sor_power;
	priv->pior.power = nv50_pior_power;
	priv->pior.dp = &nv50_pior_dp_func;
	return 0;
}