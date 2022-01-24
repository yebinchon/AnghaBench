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
struct nouveau_object {scalar_t__ engine; scalar_t__ parent; } ;
struct TYPE_4__ {int (* fini ) (struct nouveau_object*,int) ;int (* init ) (struct nouveau_object*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__,int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_object*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_object*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nouveau_object*,char*,int) ; 
 TYPE_2__* FUNC7 (struct nouveau_object*) ; 
 TYPE_1__* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct nouveau_object*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct nouveau_object*,char*,int) ; 
 int FUNC11 (struct nouveau_object*,int) ; 
 int FUNC12 (struct nouveau_object*) ; 

__attribute__((used)) static int
FUNC13(struct nouveau_object *object)
{
	int ret, rret;

	FUNC9(object, "suspending...\n");

	ret = FUNC7(object)->fini(object, true);
	if (ret) {
		FUNC5(object, "failed suspend, %d\n", ret);
		return ret;
	}

	if (object->engine) {
		FUNC0(&FUNC8(object->engine)->mutex);
		ret = FUNC2(object->engine, true);
		FUNC1(&FUNC8(object->engine)->mutex);
		if (ret) {
			FUNC10(object, "engine failed suspend, %d\n", ret);
			goto fail_engine;
		}
	}

	if (object->parent) {
		ret = FUNC2(object->parent, true);
		if (ret) {
			FUNC10(object, "parent failed suspend, %d\n", ret);
			goto fail_parent;
		}
	}

	FUNC4(object, "suspended\n");
	return 0;

fail_parent:
	if (object->engine) {
		FUNC0(&FUNC8(object->engine)->mutex);
		rret = FUNC3(object->engine);
		FUNC1(&FUNC8(object->engine)->mutex);
		if (rret)
			FUNC6(object, "engine failed to reinit, %d\n", rret);
	}

fail_engine:
	rret = FUNC7(object)->init(object);
	if (rret)
		FUNC6(object, "failed to reinit, %d\n", rret);

	return ret;
}