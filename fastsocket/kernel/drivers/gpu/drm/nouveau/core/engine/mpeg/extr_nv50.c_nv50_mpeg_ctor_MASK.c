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
struct nv50_mpeg_priv {int dummy; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  tlb_flush; int /*<<< orphan*/  sclass; int /*<<< orphan*/ * cclass; } ;
struct TYPE_3__ {int unit; int /*<<< orphan*/  intr; } ;

/* Variables and functions */
 int FUNC0 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nv50_mpeg_priv**) ; 
 int /*<<< orphan*/  nv50_mpeg_cclass ; 
 int /*<<< orphan*/  nv50_mpeg_sclass ; 
 int /*<<< orphan*/  nv50_mpeg_tlb_flush ; 
 int /*<<< orphan*/  nv50_vpe_intr ; 
 TYPE_2__* FUNC1 (struct nv50_mpeg_priv*) ; 
 struct nouveau_object* FUNC2 (struct nv50_mpeg_priv*) ; 
 TYPE_1__* FUNC3 (struct nv50_mpeg_priv*) ; 

__attribute__((used)) static int
FUNC4(struct nouveau_object *parent, struct nouveau_object *engine,
	       struct nouveau_oclass *oclass, void *data, u32 size,
	       struct nouveau_object **pobject)
{
	struct nv50_mpeg_priv *priv;
	int ret;

	ret = FUNC0(parent, engine, oclass, &priv);
	*pobject = FUNC2(priv);
	if (ret)
		return ret;

	FUNC3(priv)->unit = 0x00400002;
	FUNC3(priv)->intr = nv50_vpe_intr;
	FUNC1(priv)->cclass = &nv50_mpeg_cclass;
	FUNC1(priv)->sclass = nv50_mpeg_sclass;
	FUNC1(priv)->tlb_flush = nv50_mpeg_tlb_flush;
	return 0;
}