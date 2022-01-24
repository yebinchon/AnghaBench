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
struct nouveau_object {int /*<<< orphan*/  usecount; struct nouveau_object* parent; struct nouveau_object* engine; } ;
struct TYPE_4__ {int (* init ) (struct nouveau_object*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_object*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nouveau_object*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_object*,char*,int) ; 
 TYPE_2__* FUNC8 (struct nouveau_object*) ; 
 TYPE_1__* FUNC9 (struct nouveau_object*) ; 
 int /*<<< orphan*/  FUNC10 (struct nouveau_object*,char*,...) ; 
 int FUNC11 (struct nouveau_object*) ; 

int
FUNC12(struct nouveau_object *object)
{
	int ref = FUNC0(1, &object->usecount);
	int ret;

	FUNC10(object, "use(+1) == %d\n", FUNC2(&object->usecount));
	if (ref != 1)
		return 0;

	FUNC10(object, "initialising...\n");
	if (object->parent) {
		ret = FUNC12(object->parent);
		if (ret) {
			FUNC7(object, "parent failed, %d\n", ret);
			goto fail_parent;
		}
	}

	if (object->engine) {
		FUNC3(&FUNC9(object->engine)->mutex);
		ret = FUNC12(object->engine);
		FUNC4(&FUNC9(object->engine)->mutex);
		if (ret) {
			FUNC7(object, "engine failed, %d\n", ret);
			goto fail_engine;
		}
	}

	ret = FUNC8(object)->init(object);
	if (ret) {
		FUNC7(object, "init failed, %d\n", ret);
		goto fail_self;
	}

	FUNC6(object, "initialised\n");
	return 0;

fail_self:
	if (object->engine) {
		FUNC3(&FUNC9(object->engine)->mutex);
		FUNC5(object->engine, false);
		FUNC4(&FUNC9(object->engine)->mutex);
	}
fail_engine:
	if (object->parent)
		 FUNC5(object->parent, false);
fail_parent:
	FUNC1(&object->usecount);
	return ret;
}