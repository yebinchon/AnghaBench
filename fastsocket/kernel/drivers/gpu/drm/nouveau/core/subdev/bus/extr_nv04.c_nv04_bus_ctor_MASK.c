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
struct nv04_bus_priv {int dummy; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  intr; } ;

/* Variables and functions */
 int FUNC0 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nv04_bus_priv**) ; 
 int /*<<< orphan*/  nv04_bus_intr ; 
 struct nouveau_object* FUNC1 (struct nv04_bus_priv*) ; 
 TYPE_1__* FUNC2 (struct nv04_bus_priv*) ; 

__attribute__((used)) static int
FUNC3(struct nouveau_object *parent, struct nouveau_object *engine,
	      struct nouveau_oclass *oclass, void *data, u32 size,
	      struct nouveau_object **pobject)
{
	struct nv04_bus_priv *priv;
	int ret;

	ret = FUNC0(parent, engine, oclass, &priv);
	*pobject = FUNC1(priv);
	if (ret)
		return ret;

	FUNC2(priv)->intr = nv04_bus_intr;
	return 0;
}