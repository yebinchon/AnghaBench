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
struct nvc0_graph_priv {int firmware; int gpc_nr; int rop_nr; int* tpc_nr; int tpc_total; int magic_not_rop_nr; int /*<<< orphan*/  unk4188b8; int /*<<< orphan*/  unk4188b4; int /*<<< orphan*/  fuc41ad; int /*<<< orphan*/  fuc41ac; int /*<<< orphan*/  fuc409d; int /*<<< orphan*/  fuc409c; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int firmware; int gpc_nr; int rop_nr; int* tpc_nr; int tpc_total; int magic_not_rop_nr; int /*<<< orphan*/  unk4188b8; int /*<<< orphan*/  unk4188b4; int /*<<< orphan*/  fuc41ad; int /*<<< orphan*/  fuc41ac; int /*<<< orphan*/  fuc409d; int /*<<< orphan*/  fuc409c; } ;
struct nouveau_device {int chipset; int /*<<< orphan*/  cfgopt; } ;
struct TYPE_4__ {int /*<<< orphan*/  sclass; int /*<<< orphan*/ * cclass; } ;
struct TYPE_3__ {int unit; int /*<<< orphan*/  intr; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct nvc0_graph_priv*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct nvc0_graph_priv*,struct nvc0_graph_priv*,struct nouveau_oclass*,int,struct nvc0_graph_priv**) ; 
 struct nouveau_device* FUNC4 (struct nvc0_graph_priv*) ; 
 TYPE_2__* FUNC5 (struct nvc0_graph_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvc0_graph_priv*,char*) ; 
 struct nvc0_graph_priv* FUNC7 (struct nvc0_graph_priv*) ; 
 int FUNC8 (struct nvc0_graph_priv*,int) ; 
 TYPE_1__* FUNC9 (struct nvc0_graph_priv*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC11 (struct nvc0_graph_priv*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nve0_graph_cclass ; 
 int /*<<< orphan*/  nve0_graph_intr ; 
 int /*<<< orphan*/  nve0_graph_sclass ; 

__attribute__((used)) static int
FUNC12(struct nouveau_object *parent, struct nouveau_object *engine,
	       struct nouveau_oclass *oclass, void *data, u32 size,
	       struct nouveau_object **pobject)
{
	struct nouveau_device *device = FUNC4(parent);
	struct nvc0_graph_priv *priv;
	int ret, i;

	ret = FUNC3(parent, engine, oclass, true, &priv);
	*pobject = FUNC7(priv);
	if (ret)
		return ret;

	FUNC9(priv)->unit = 0x18001000;
	FUNC9(priv)->intr = nve0_graph_intr;
	FUNC5(priv)->cclass = &nve0_graph_cclass;
	FUNC5(priv)->sclass = nve0_graph_sclass;

	if (FUNC1(device->cfgopt, "NvGrUseFW", false)) {
		FUNC6(priv, "using external firmware\n");
		if (FUNC11(priv, "fuc409c", &priv->fuc409c) ||
		    FUNC11(priv, "fuc409d", &priv->fuc409d) ||
		    FUNC11(priv, "fuc41ac", &priv->fuc41ac) ||
		    FUNC11(priv, "fuc41ad", &priv->fuc41ad))
			return -EINVAL;
		priv->firmware = true;
	}

	ret = FUNC2(parent, NULL, 0x1000, 256, 0, &priv->unk4188b4);
	if (ret)
		return ret;

	ret = FUNC2(parent, NULL, 0x1000, 256, 0, &priv->unk4188b8);
	if (ret)
		return ret;

	for (i = 0; i < 0x1000; i += 4) {
		FUNC10(priv->unk4188b4, i, 0x00000010);
		FUNC10(priv->unk4188b8, i, 0x00000010);
	}

	priv->gpc_nr =  FUNC8(priv, 0x409604) & 0x0000001f;
	priv->rop_nr = (FUNC8(priv, 0x409604) & 0x001f0000) >> 16;
	for (i = 0; i < priv->gpc_nr; i++) {
		priv->tpc_nr[i] = FUNC8(priv, FUNC0(i, 0x2608));
		priv->tpc_total += priv->tpc_nr[i];
	}

	switch (FUNC4(priv)->chipset) {
	case 0xe4:
		if (priv->tpc_total == 8)
			priv->magic_not_rop_nr = 3;
		else
		if (priv->tpc_total == 7)
			priv->magic_not_rop_nr = 1;
		break;
	case 0xe7:
	case 0xe6:
		priv->magic_not_rop_nr = 1;
		break;
	default:
		break;
	}

	return 0;
}