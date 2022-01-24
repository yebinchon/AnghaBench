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
struct ehea_eqe {int dummy; } ;
struct ehea_eq {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  hw_queue; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

struct ehea_eqe *FUNC3(struct ehea_eq *eq)
{
	struct ehea_eqe *eqe;
	unsigned long flags;

	FUNC1(&eq->spinlock, flags);
	eqe = (struct ehea_eqe *)FUNC0(&eq->hw_queue);
	FUNC2(&eq->spinlock, flags);

	return eqe;
}