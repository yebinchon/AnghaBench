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
struct TYPE_2__ {int /*<<< orphan*/  ibdev; } ;
struct qib_devdata {TYPE_1__ verbs_dev; int /*<<< orphan*/  list; int /*<<< orphan*/  unit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qib_devs_lock ; 
 int /*<<< orphan*/  qib_unit_table ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct qib_devdata *dd)
{
	unsigned long flags;

	FUNC3(&qib_devs_lock, flags);
	FUNC1(&qib_unit_table, dd->unit);
	FUNC2(&dd->list);
	FUNC4(&qib_devs_lock, flags);

	FUNC0(&dd->verbs_dev.ibdev);
}