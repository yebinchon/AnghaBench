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
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ open; int /*<<< orphan*/  lock; int /*<<< orphan*/  sbprof_tbbuf; scalar_t__ tb_enable; scalar_t__ tb_armed; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ SB_CLOSED ; 
 int FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__ sbp ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *filp)
{
	int minor;

	minor = FUNC0(inode);
	if (minor != 0 || sbp.open != SB_CLOSED)
		return -ENODEV;

	FUNC1(&sbp.lock);

	if (sbp.tb_armed || sbp.tb_enable)
		FUNC3();

	FUNC4(sbp.sbprof_tbbuf);
	sbp.open = SB_CLOSED;
	FUNC5();

	FUNC2(&sbp.lock);

	return 0;
}