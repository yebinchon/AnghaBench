#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {TYPE_1__* vblank; } ;
struct nv04_disp_priv {TYPE_2__ base; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  sclass; } ;
struct TYPE_7__ {int /*<<< orphan*/  intr; } ;
struct TYPE_5__ {int /*<<< orphan*/  disable; int /*<<< orphan*/  enable; struct nv04_disp_priv* priv; } ;

/* Variables and functions */
 int FUNC0 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,char*,char*,struct nv04_disp_priv**) ; 
 int /*<<< orphan*/  nv04_disp_intr ; 
 int /*<<< orphan*/  nv04_disp_sclass ; 
 int /*<<< orphan*/  nv04_disp_vblank_disable ; 
 int /*<<< orphan*/  nv04_disp_vblank_enable ; 
 TYPE_4__* FUNC1 (struct nv04_disp_priv*) ; 
 struct nouveau_object* FUNC2 (struct nv04_disp_priv*) ; 
 TYPE_3__* FUNC3 (struct nv04_disp_priv*) ; 

__attribute__((used)) static int
FUNC4(struct nouveau_object *parent, struct nouveau_object *engine,
	       struct nouveau_oclass *oclass, void *data, u32 size,
	       struct nouveau_object **pobject)
{
	struct nv04_disp_priv *priv;
	int ret;

	ret = FUNC0(parent, engine, oclass, 2, "DISPLAY",
				  "display", &priv);
	*pobject = FUNC2(priv);
	if (ret)
		return ret;

	FUNC1(priv)->sclass = nv04_disp_sclass;
	FUNC3(priv)->intr = nv04_disp_intr;
	priv->base.vblank->priv = priv;
	priv->base.vblank->enable = nv04_disp_vblank_enable;
	priv->base.vblank->disable = nv04_disp_vblank_disable;
	return 0;
}