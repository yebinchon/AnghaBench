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
struct iscsi_boot_kset {int /*<<< orphan*/  kobj_list; int /*<<< orphan*/  kset; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  firmware_kobj ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_boot_kset*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct iscsi_boot_kset* FUNC3 (int,int /*<<< orphan*/ ) ; 

struct iscsi_boot_kset *FUNC4(const char *set_name)
{
	struct iscsi_boot_kset *boot_kset;

	boot_kset = FUNC3(sizeof(*boot_kset), GFP_KERNEL);
	if (!boot_kset)
		return NULL;

	boot_kset->kset = FUNC2(set_name, NULL, firmware_kobj);
	if (!boot_kset->kset) {
		FUNC1(boot_kset);
		return NULL;
	}

	FUNC0(&boot_kset->kobj_list);
	return boot_kset;
}