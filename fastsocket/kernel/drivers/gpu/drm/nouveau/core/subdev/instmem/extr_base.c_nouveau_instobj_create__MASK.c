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
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_instobj {int /*<<< orphan*/  head; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct nouveau_instmem {TYPE_1__ base; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV_MEMOBJ_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int /*<<< orphan*/ ,int,void**) ; 

int
FUNC4(struct nouveau_object *parent,
			struct nouveau_object *engine,
			struct nouveau_oclass *oclass,
			int length, void **pobject)
{
	struct nouveau_instmem *imem = (void *)engine;
	struct nouveau_instobj *iobj;
	int ret;

	ret = FUNC3(parent, engine, oclass, NV_MEMOBJ_CLASS,
				     length, pobject);
	iobj = *pobject;
	if (ret)
		return ret;

	FUNC1(&imem->base.mutex);
	FUNC0(&iobj->head, &imem->list);
	FUNC2(&imem->base.mutex);
	return 0;
}