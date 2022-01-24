#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sbprof_tb {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_4__ {scalar_t__ open; int /*<<< orphan*/  lock; int /*<<< orphan*/  tb_read; int /*<<< orphan*/  tb_sync; struct TYPE_4__* sbprof_tbbuf; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int MAX_TBSAMPLE_BYTES ; 
 scalar_t__ SB_CLOSED ; 
 scalar_t__ SB_OPEN ; 
 int /*<<< orphan*/  SB_OPENING ; 
 int FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ sbp ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *filp)
{
	int minor;

	minor = FUNC0(inode);
	if (minor != 0)
		return -ENODEV;

	if (FUNC6(&sbp.open, SB_OPENING) != SB_CLOSED)
		return -EBUSY;

	FUNC2(&sbp, 0, sizeof(struct sbprof_tb));
	sbp.sbprof_tbbuf = FUNC4(MAX_TBSAMPLE_BYTES);
	if (!sbp.sbprof_tbbuf) {
		sbp.open = SB_CLOSED;
		FUNC5();
		return -ENOMEM;
	}

	FUNC2(sbp.sbprof_tbbuf, 0, MAX_TBSAMPLE_BYTES);
	FUNC1(&sbp.tb_sync);
	FUNC1(&sbp.tb_read);
	FUNC3(&sbp.lock);

	sbp.open = SB_OPEN;
	FUNC5();

	return 0;
}