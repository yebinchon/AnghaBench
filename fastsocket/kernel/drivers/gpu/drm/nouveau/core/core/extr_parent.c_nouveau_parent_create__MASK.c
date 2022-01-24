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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct nouveau_sclass {struct nouveau_oclass* oclass; int /*<<< orphan*/ * engine; struct nouveau_sclass* sclass; } ;
struct nouveau_parent {int /*<<< orphan*/  engine; struct nouveau_sclass* sclass; } ;
struct nouveau_oclass {scalar_t__ ofuncs; } ;
struct nouveau_object {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NV_PARENT_CLASS ; 
 struct nouveau_sclass* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,int,void**) ; 
 int /*<<< orphan*/ * FUNC2 (struct nouveau_object*) ; 

int
FUNC3(struct nouveau_object *parent,
		       struct nouveau_object *engine,
		       struct nouveau_oclass *oclass, u32 pclass,
		       struct nouveau_oclass *sclass, u64 engcls,
		       int size, void **pobject)
{
	struct nouveau_parent *object;
	struct nouveau_sclass *nclass;
	int ret;

	ret = FUNC1(parent, engine, oclass, pclass |
				     NV_PARENT_CLASS, size, pobject);
	object = *pobject;
	if (ret)
		return ret;

	while (sclass && sclass->ofuncs) {
		nclass = FUNC0(sizeof(*nclass), GFP_KERNEL);
		if (!nclass)
			return -ENOMEM;

		nclass->sclass = object->sclass;
		object->sclass = nclass;
		nclass->engine = engine ? FUNC2(engine) : NULL;
		nclass->oclass = sclass;
		sclass++;
	}

	object->engine = engcls;
	return 0;
}