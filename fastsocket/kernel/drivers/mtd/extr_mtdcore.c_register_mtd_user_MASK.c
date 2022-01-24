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
struct mtd_notifier {int /*<<< orphan*/  (* add ) (scalar_t__) ;int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int MAX_MTD_DEVICES ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mtd_notifiers ; 
 scalar_t__* mtd_table ; 
 int /*<<< orphan*/  mtd_table_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5 (struct mtd_notifier *new)
{
	int i;

	FUNC2(&mtd_table_mutex);

	FUNC1(&new->list, &mtd_notifiers);

 	FUNC0(THIS_MODULE);

	for (i=0; i< MAX_MTD_DEVICES; i++)
		if (mtd_table[i])
			new->add(mtd_table[i]);

	FUNC3(&mtd_table_mutex);
}