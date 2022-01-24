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
struct mtd_notifier {int /*<<< orphan*/  list; int /*<<< orphan*/  (* remove ) (scalar_t__) ;} ;

/* Variables and functions */
 int MAX_MTD_DEVICES ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__* mtd_table ; 
 int /*<<< orphan*/  mtd_table_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

int FUNC5 (struct mtd_notifier *old)
{
	int i;

	FUNC2(&mtd_table_mutex);

	FUNC1(THIS_MODULE);

	for (i=0; i< MAX_MTD_DEVICES; i++)
		if (mtd_table[i])
			old->remove(mtd_table[i]);

	FUNC0(&old->list);
	FUNC3(&mtd_table_mutex);
	return 0;
}