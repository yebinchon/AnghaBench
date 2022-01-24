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
struct nvc0_ppp_priv {int dummy; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  sclass; int /*<<< orphan*/ * cclass; } ;
struct TYPE_3__ {int unit; } ;

/* Variables and functions */
 int FUNC0 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,int,char*,char*,struct nvc0_ppp_priv**) ; 
 TYPE_2__* FUNC1 (struct nvc0_ppp_priv*) ; 
 struct nouveau_object* FUNC2 (struct nvc0_ppp_priv*) ; 
 TYPE_1__* FUNC3 (struct nvc0_ppp_priv*) ; 
 int /*<<< orphan*/  nvc0_ppp_cclass ; 
 int /*<<< orphan*/  nvc0_ppp_sclass ; 

__attribute__((used)) static int
FUNC4(struct nouveau_object *parent, struct nouveau_object *engine,
	      struct nouveau_oclass *oclass, void *data, u32 size,
	      struct nouveau_object **pobject)
{
	struct nvc0_ppp_priv *priv;
	int ret;

	ret = FUNC0(parent, engine, oclass, 0x086000, true,
				    "PPPP", "ppp", &priv);
	*pobject = FUNC2(priv);
	if (ret)
		return ret;

	FUNC3(priv)->unit = 0x00000002;
	FUNC1(priv)->cclass = &nvc0_ppp_cclass;
	FUNC1(priv)->sclass = nvc0_ppp_sclass;
	return 0;
}