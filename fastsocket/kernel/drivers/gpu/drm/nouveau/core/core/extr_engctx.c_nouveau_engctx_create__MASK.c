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
typedef  scalar_t__ u32 ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_engine {int /*<<< orphan*/  lock; int /*<<< orphan*/  contexts; } ;
struct nouveau_client {TYPE_1__* vm; } ;
struct TYPE_4__ {unsigned long long addr; int /*<<< orphan*/  head; } ;
struct TYPE_3__ {int /*<<< orphan*/ * engref; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV_ENGCTX_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nouveau_client* FUNC2 (struct nouveau_object*) ; 
 int FUNC3 (struct nouveau_object*,struct nouveau_engine*,void**) ; 
 int FUNC4 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int /*<<< orphan*/ ,struct nouveau_object*,scalar_t__,scalar_t__,scalar_t__,int,void**) ; 
 int FUNC5 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int /*<<< orphan*/ ,int,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct nouveau_object**) ; 
 TYPE_2__* FUNC7 (struct nouveau_object*) ; 
 size_t FUNC8 (struct nouveau_object*) ; 
 struct nouveau_engine* FUNC9 (struct nouveau_object*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC12(struct nouveau_object *parent,
		       struct nouveau_object *engobj,
		       struct nouveau_oclass *oclass,
		       struct nouveau_object *pargpu,
		       u32 size, u32 align, u32 flags,
		       int length, void **pobject)
{
	struct nouveau_client *client = FUNC2(parent);
	struct nouveau_engine *engine = FUNC9(engobj);
	struct nouveau_object *engctx;
	unsigned long save;
	int ret;

	/* check if this engine already has a context for the parent object,
	 * and reference it instead of creating a new one
	 */
	FUNC10(&engine->lock, save);
	ret = FUNC3(parent, engine, pobject);
	FUNC11(&engine->lock, save);
	if (ret)
		return ret;

	/* create the new context, supports creating both raw objects and
	 * objects backed by instance memory
	 */
	if (size) {
		ret = FUNC4(parent, engobj, oclass,
					     NV_ENGCTX_CLASS,
					     pargpu, size, align, flags,
					     length, pobject);
	} else {
		ret = FUNC5(parent, engobj, oclass,
					     NV_ENGCTX_CLASS, length, pobject);
	}

	engctx = *pobject;
	if (ret)
		return ret;

	/* must take the lock again and re-check a context doesn't already
	 * exist (in case of a race) - the lock had to be dropped before as
	 * it's not possible to allocate the object with it held.
	 */
	FUNC10(&engine->lock, save);
	ret = FUNC3(parent, engine, pobject);
	if (ret) {
		FUNC11(&engine->lock, save);
		FUNC6(NULL, &engctx);
		return ret;
	}

	if (client->vm)
		FUNC0(&client->vm->engref[FUNC8(engobj)]);
	FUNC1(&FUNC7(engctx)->head, &engine->contexts);
	FUNC7(engctx)->addr = ~0ULL;
	FUNC11(&engine->lock, save);
	return 0;
}