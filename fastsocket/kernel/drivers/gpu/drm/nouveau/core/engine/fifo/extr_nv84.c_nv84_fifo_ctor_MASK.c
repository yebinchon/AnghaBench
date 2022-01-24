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
struct TYPE_6__ {TYPE_1__* uevent; } ;
struct nv50_fifo_priv {TYPE_2__ base; int /*<<< orphan*/ * playlist; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  sclass; int /*<<< orphan*/ * cclass; } ;
struct TYPE_7__ {int unit; int /*<<< orphan*/  intr; } ;
struct TYPE_5__ {struct nv50_fifo_priv* priv; int /*<<< orphan*/  disable; int /*<<< orphan*/  enable; } ;

/* Variables and functions */
 int FUNC0 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,int,struct nv50_fifo_priv**) ; 
 int FUNC1 (struct nouveau_object*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nv04_fifo_intr ; 
 int /*<<< orphan*/  nv84_fifo_cclass ; 
 int /*<<< orphan*/  nv84_fifo_sclass ; 
 int /*<<< orphan*/  nv84_fifo_uevent_disable ; 
 int /*<<< orphan*/  nv84_fifo_uevent_enable ; 
 TYPE_4__* FUNC2 (struct nv50_fifo_priv*) ; 
 struct nouveau_object* FUNC3 (struct nv50_fifo_priv*) ; 
 TYPE_3__* FUNC4 (struct nv50_fifo_priv*) ; 

__attribute__((used)) static int
FUNC5(struct nouveau_object *parent, struct nouveau_object *engine,
	       struct nouveau_oclass *oclass, void *data, u32 size,
	       struct nouveau_object **pobject)
{
	struct nv50_fifo_priv *priv;
	int ret;

	ret = FUNC0(parent, engine, oclass, 1, 127, &priv);
	*pobject = FUNC3(priv);
	if (ret)
		return ret;

	ret = FUNC1(parent, NULL, 128 * 4, 0x1000, 0,
				&priv->playlist[0]);
	if (ret)
		return ret;

	ret = FUNC1(parent, NULL, 128 * 4, 0x1000, 0,
				&priv->playlist[1]);
	if (ret)
		return ret;

	priv->base.uevent->enable = nv84_fifo_uevent_enable;
	priv->base.uevent->disable = nv84_fifo_uevent_disable;
	priv->base.uevent->priv = priv;

	FUNC4(priv)->unit = 0x00000100;
	FUNC4(priv)->intr = nv04_fifo_intr;
	FUNC2(priv)->cclass = &nv84_fifo_cclass;
	FUNC2(priv)->sclass = nv84_fifo_sclass;
	return 0;
}