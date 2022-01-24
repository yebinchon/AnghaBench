#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nouveau_object {int /*<<< orphan*/  engine; } ;
struct nouveau_gpuobj {int /*<<< orphan*/  size; int /*<<< orphan*/  addr; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  nouveau_gpudup_oclass ; 
 int FUNC0 (struct nouveau_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nouveau_gpuobj**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_gpuobj*) ; 

int
FUNC3(struct nouveau_object *parent, struct nouveau_gpuobj *base,
		   struct nouveau_gpuobj **pgpuobj)
{
	struct nouveau_gpuobj *gpuobj;
	int ret;

	ret = FUNC0(parent, parent->engine,
				   &nouveau_gpudup_oclass, 0, &gpuobj);
	*pgpuobj = gpuobj;
	if (ret)
		return ret;

	FUNC1(FUNC2(base), &gpuobj->parent);
	gpuobj->addr = base->addr;
	gpuobj->size = base->size;
	return 0;
}