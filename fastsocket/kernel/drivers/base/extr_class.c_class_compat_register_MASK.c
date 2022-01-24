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
struct class_compat {int /*<<< orphan*/  kobj; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__* class_kset ; 
 int /*<<< orphan*/  FUNC0 (struct class_compat*) ; 
 struct class_compat* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 

struct class_compat *FUNC3(const char *name)
{
	struct class_compat *cls;

	cls = FUNC1(sizeof(struct class_compat), GFP_KERNEL);
	if (!cls)
		return NULL;
	cls->kobj = FUNC2(name, &class_kset->kobj);
	if (!cls->kobj) {
		FUNC0(cls);
		return NULL;
	}
	return cls;
}