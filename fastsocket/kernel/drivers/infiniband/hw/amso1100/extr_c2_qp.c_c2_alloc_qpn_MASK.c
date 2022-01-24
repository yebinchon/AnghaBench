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
struct c2_qp {int /*<<< orphan*/  qpn; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  last; int /*<<< orphan*/  idr; } ;
struct c2_dev {TYPE_1__ qp_table; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *,struct c2_qp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct c2_dev *c2dev, struct c2_qp *qp)
{
	int ret;

        do {
		FUNC2(&c2dev->qp_table.lock);
		ret = FUNC0(&c2dev->qp_table.idr, qp,
					c2dev->qp_table.last++, &qp->qpn);
		FUNC3(&c2dev->qp_table.lock);
        } while ((ret == -EAGAIN) &&
	 	 FUNC1(&c2dev->qp_table.idr, GFP_KERNEL));
	return ret;
}