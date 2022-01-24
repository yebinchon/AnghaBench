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
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLPAR_KOBJ_NAME ; 
 int EINVAL ; 
 int /*<<< orphan*/  dlpar_attr_group ; 
 int /*<<< orphan*/  dlpar_kobj ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* pci_slots_kset ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(void)
{
	int error;

	dlpar_kobj = FUNC0(DLPAR_KOBJ_NAME,
					    &pci_slots_kset->kobj);
	if (!dlpar_kobj)
		return -EINVAL;

	error = FUNC2(dlpar_kobj, &dlpar_attr_group);
	if (error)
		FUNC1(dlpar_kobj);
	return error;
}