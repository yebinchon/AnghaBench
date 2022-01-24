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
struct TYPE_4__ {int /*<<< orphan*/  intr; } ;
struct TYPE_3__ {int /*<<< orphan*/  alarm; int /*<<< orphan*/  read; TYPE_2__ base; } ;
struct nv04_timer_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  alarms; TYPE_1__ base; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nv04_timer_priv**) ; 
 int /*<<< orphan*/  nv04_timer_alarm ; 
 int /*<<< orphan*/  nv04_timer_intr ; 
 int /*<<< orphan*/  nv04_timer_read ; 
 struct nouveau_object* FUNC2 (struct nv04_timer_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct nouveau_object *parent, struct nouveau_object *engine,
		struct nouveau_oclass *oclass, void *data, u32 size,
		struct nouveau_object **pobject)
{
	struct nv04_timer_priv *priv;
	int ret;

	ret = FUNC1(parent, engine, oclass, &priv);
	*pobject = FUNC2(priv);
	if (ret)
		return ret;

	priv->base.base.intr = nv04_timer_intr;
	priv->base.read = nv04_timer_read;
	priv->base.alarm = nv04_timer_alarm;

	FUNC0(&priv->alarms);
	FUNC3(&priv->lock);
	return 0;
}