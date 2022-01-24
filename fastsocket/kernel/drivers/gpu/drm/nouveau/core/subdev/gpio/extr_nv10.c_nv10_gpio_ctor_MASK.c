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
struct TYPE_5__ {TYPE_1__* events; int /*<<< orphan*/  sense; int /*<<< orphan*/  drive; } ;
struct nv10_gpio_priv {TYPE_2__ base; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  intr; } ;
struct TYPE_4__ {int /*<<< orphan*/  disable; int /*<<< orphan*/  enable; struct nv10_gpio_priv* priv; } ;

/* Variables and functions */
 int FUNC0 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,struct nv10_gpio_priv**) ; 
 int /*<<< orphan*/  nv10_gpio_drive ; 
 int /*<<< orphan*/  nv10_gpio_intr ; 
 int /*<<< orphan*/  nv10_gpio_intr_disable ; 
 int /*<<< orphan*/  nv10_gpio_intr_enable ; 
 int /*<<< orphan*/  nv10_gpio_sense ; 
 struct nouveau_object* FUNC1 (struct nv10_gpio_priv*) ; 
 TYPE_3__* FUNC2 (struct nv10_gpio_priv*) ; 

__attribute__((used)) static int
FUNC3(struct nouveau_object *parent, struct nouveau_object *engine,
	       struct nouveau_oclass *oclass, void *data, u32 size,
	       struct nouveau_object **pobject)
{
	struct nv10_gpio_priv *priv;
	int ret;

	ret = FUNC0(parent, engine, oclass, 16, &priv);
	*pobject = FUNC1(priv);
	if (ret)
		return ret;

	priv->base.drive = nv10_gpio_drive;
	priv->base.sense = nv10_gpio_sense;
	priv->base.events->priv = priv;
	priv->base.events->enable = nv10_gpio_intr_enable;
	priv->base.events->disable = nv10_gpio_intr_disable;
	FUNC2(priv)->intr = nv10_gpio_intr;
	return 0;
}