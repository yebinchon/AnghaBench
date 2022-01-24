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
struct elevator_type {int /*<<< orphan*/  elevator_owner; } ;

/* Variables and functions */
 int ELV_NAME_MAX ; 
 struct elevator_type* FUNC0 (char const*) ; 
 int /*<<< orphan*/  elv_list_lock ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct elevator_type *FUNC8(const char *name)
{
	struct elevator_type *e;

	FUNC2(&elv_list_lock);

	e = FUNC0(name);
	if (!e) {
		char elv[ELV_NAME_MAX + FUNC6("-iosched")];

		FUNC3(&elv_list_lock);

		if (!FUNC5(name, "anticipatory"))
			FUNC4(elv, "as-iosched");
		else
			FUNC4(elv, "%s-iosched", name);

		FUNC1("%s", elv);
		FUNC2(&elv_list_lock);
		e = FUNC0(name);
	}

	if (e && !FUNC7(e->elevator_owner))
		e = NULL;

	FUNC3(&elv_list_lock);

	return e;
}