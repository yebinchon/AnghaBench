#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct nvc0_ltcg_priv {int subp_nr; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  intr; } ;

/* Variables and functions */
 int FUNC0 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nvc0_ltcg_priv**) ; 
 int /*<<< orphan*/  FUNC1 (struct nvc0_ltcg_priv*,int,int,int) ; 
 struct nouveau_object* FUNC2 (struct nvc0_ltcg_priv*) ; 
 int FUNC3 (struct nvc0_ltcg_priv*,int) ; 
 TYPE_1__* FUNC4 (struct nvc0_ltcg_priv*) ; 
 int /*<<< orphan*/  nvc0_ltcg_intr ; 

__attribute__((used)) static int
FUNC5(struct nouveau_object *parent, struct nouveau_object *engine,
	       struct nouveau_oclass *oclass, void *data, u32 size,
	       struct nouveau_object **pobject)
{
	struct nvc0_ltcg_priv *priv;
	int ret;

	ret = FUNC0(parent, engine, oclass, &priv);
	*pobject = FUNC2(priv);
	if (ret)
		return ret;

	priv->subp_nr = FUNC3(priv, 0x17e8dc) >> 24;
	FUNC1(priv, 0x17e820, 0x00100000, 0x00000000); /* INTR_EN &= ~0x10 */

	FUNC4(priv)->intr = nvc0_ltcg_intr;
	return 0;
}