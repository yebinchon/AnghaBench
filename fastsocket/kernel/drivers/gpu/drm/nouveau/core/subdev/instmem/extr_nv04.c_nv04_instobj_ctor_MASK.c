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
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/  addr; } ;
struct nv04_instobj_priv {TYPE_2__* mem; TYPE_1__ base; } ;
struct nv04_instmem_priv {int /*<<< orphan*/  heap; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  length; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int FUNC0 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nv04_instobj_priv**) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_2__**) ; 
 struct nouveau_object* FUNC2 (struct nv04_instobj_priv*) ; 

__attribute__((used)) static int
FUNC3(struct nouveau_object *parent, struct nouveau_object *engine,
		  struct nouveau_oclass *oclass, void *data, u32 size,
		  struct nouveau_object **pobject)
{
	struct nv04_instmem_priv *priv = (void *)engine;
	struct nv04_instobj_priv *node;
	int ret, align;

	align = (unsigned long)data;
	if (!align)
		align = 1;

	ret = FUNC0(parent, engine, oclass, &node);
	*pobject = FUNC2(node);
	if (ret)
		return ret;

	ret = FUNC1(&priv->heap, 1, size, size, align, &node->mem);
	if (ret)
		return ret;

	node->base.addr = node->mem->offset;
	node->base.size = node->mem->length;
	return 0;
}