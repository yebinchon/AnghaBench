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

/* Variables and functions */
 int EACCES ; 
 int /*<<< orphan*/  MACHINE_IS_VM ; 
 int /*<<< orphan*/  all_guests ; 
 int /*<<< orphan*/  dbfs_file_2fc ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  guest_query ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  local_guest ; 

int FUNC2(void)
{
	if (!MACHINE_IS_VM)
		return 0;
	if (FUNC0(0, all_guests, NULL) > 0)
		guest_query = all_guests;
	else if (FUNC0(0, local_guest, NULL) > 0)
		guest_query = local_guest;
	else
		return -EACCES;
	return FUNC1(&dbfs_file_2fc);
}