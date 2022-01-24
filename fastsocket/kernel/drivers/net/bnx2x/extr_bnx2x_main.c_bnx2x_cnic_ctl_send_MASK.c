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
struct cnic_ops {int (* cnic_ctl ) (int /*<<< orphan*/ ,struct cnic_ctl_info*) ;} ;
struct cnic_ctl_info {int dummy; } ;
struct bnx2x {int /*<<< orphan*/  cnic_mutex; int /*<<< orphan*/  cnic_data; int /*<<< orphan*/  cnic_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct cnic_ops* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct cnic_ctl_info*) ; 

__attribute__((used)) static int FUNC5(struct bnx2x *bp, struct cnic_ctl_info *ctl)
{
	struct cnic_ops *c_ops;
	int rc = 0;

	FUNC1(&bp->cnic_mutex);
	c_ops = FUNC3(bp->cnic_ops,
					  FUNC0(&bp->cnic_mutex));
	if (c_ops)
		rc = c_ops->cnic_ctl(bp->cnic_data, ctl);
	FUNC2(&bp->cnic_mutex);

	return rc;
}