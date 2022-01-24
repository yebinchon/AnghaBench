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
struct nouveau_object {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_object*,char*,int /*<<< orphan*/ ) ; 

void
FUNC5(struct nouveau_object *obj, struct nouveau_object **ref)
{
	if (obj) {
		FUNC1(&obj->refcount);
		FUNC4(obj, "inc() == %d\n", FUNC2(&obj->refcount));
	}

	if (*ref) {
		int dead = FUNC0(&(*ref)->refcount);
		FUNC4(*ref, "dec() == %d\n", FUNC2(&(*ref)->refcount));
		if (dead)
			FUNC3(*ref);
	}

	*ref = obj;
}