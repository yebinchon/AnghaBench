#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* kset; int /*<<< orphan*/ * ktype; int /*<<< orphan*/ * parent; } ;
struct TYPE_7__ {TYPE_2__ kobj; } ;
struct sysdev_class {TYPE_3__ kset; int /*<<< orphan*/  name; int /*<<< orphan*/  drivers; } ;
struct kobject {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  ktype_sysdev_class ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* system_kset ; 

int FUNC5(struct sysdev_class *cls)
{
	int retval;

	FUNC4("Registering sysdev class '%s'\n", cls->name);

	FUNC0(&cls->drivers);
	FUNC3(&cls->kset.kobj, 0x00, sizeof(struct kobject));
	cls->kset.kobj.parent = &system_kset->kobj;
	cls->kset.kobj.ktype = &ktype_sysdev_class;
	cls->kset.kobj.kset = system_kset;

	retval = FUNC1(&cls->kset.kobj, "%s", cls->name);
	if (retval)
		return retval;

	return FUNC2(&cls->kset);
}