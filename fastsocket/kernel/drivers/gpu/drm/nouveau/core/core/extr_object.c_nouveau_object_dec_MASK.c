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
struct nouveau_object {int /*<<< orphan*/  usecount; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct nouveau_object*) ; 
 int FUNC4 (struct nouveau_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_object*,char*,int /*<<< orphan*/ ) ; 

int
FUNC6(struct nouveau_object *object, bool suspend)
{
	int ref = FUNC0(-1, &object->usecount);
	int ret;

	FUNC5(object, "use(-1) == %d\n", FUNC2(&object->usecount));

	if (ref == 0) {
		if (suspend)
			ret = FUNC4(object);
		else
			ret = FUNC3(object);

		if (ret) {
			FUNC1(&object->usecount);
			return ret;
		}
	}

	return 0;
}