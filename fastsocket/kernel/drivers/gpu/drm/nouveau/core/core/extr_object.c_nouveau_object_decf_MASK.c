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
struct nouveau_object {scalar_t__ parent; scalar_t__ engine; } ;
struct TYPE_4__ {int (* fini ) (struct nouveau_object*,int) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_object*,char*) ; 
 TYPE_2__* FUNC4 (struct nouveau_object*) ; 
 TYPE_1__* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct nouveau_object*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_object*,char*,int) ; 
 int FUNC8 (struct nouveau_object*,int) ; 

__attribute__((used)) static int
FUNC9(struct nouveau_object *object)
{
	int ret;

	FUNC6(object, "stopping...\n");

	ret = FUNC4(object)->fini(object, false);
	if (ret)
		FUNC7(object, "failed fini, %d\n", ret);

	if (object->engine) {
		FUNC0(&FUNC5(object->engine)->mutex);
		FUNC2(object->engine, false);
		FUNC1(&FUNC5(object->engine)->mutex);
	}

	if (object->parent)
		FUNC2(object->parent, false);

	FUNC3(object, "stopped\n");
	return 0;
}