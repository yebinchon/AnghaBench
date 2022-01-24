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
struct qib_qpn_table {int last; int nmaps; int /*<<< orphan*/  mask; int /*<<< orphan*/  lock; } ;
struct qib_devdata {int /*<<< orphan*/  qpn_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct qib_devdata *dd, struct qib_qpn_table *qpt)
{
	FUNC0(&qpt->lock);
	qpt->last = 1;          /* start with QPN 2 */
	qpt->nmaps = 1;
	qpt->mask = dd->qpn_mask;
}