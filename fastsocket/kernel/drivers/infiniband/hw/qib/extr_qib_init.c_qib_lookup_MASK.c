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
struct qib_devdata {int dummy; } ;

/* Variables and functions */
 struct qib_devdata* FUNC0 (int) ; 
 int /*<<< orphan*/  qib_devs_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

struct qib_devdata *FUNC3(int unit)
{
	struct qib_devdata *dd;
	unsigned long flags;

	FUNC1(&qib_devs_lock, flags);
	dd = FUNC0(unit);
	FUNC2(&qib_devs_lock, flags);

	return dd;
}