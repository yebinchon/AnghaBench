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
typedef  int /*<<< orphan*/  u8 ;
struct mdiobb_ops {int /*<<< orphan*/  (* set_mdio_dir ) (struct mdiobb_ctrl*,int) ;} ;
struct mdiobb_ctrl {struct mdiobb_ops* ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mdiobb_ctrl*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mdiobb_ctrl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mdiobb_ctrl*,int) ; 

__attribute__((used)) static void FUNC3(struct mdiobb_ctrl *ctrl, int read, u8 phy, u8 reg)
{
	const struct mdiobb_ops *ops = ctrl->ops;
	int i;

	ops->set_mdio_dir(ctrl, 1);

	/*
	 * Send a 32 bit preamble ('1's) with an extra '1' bit for good
	 * measure.  The IEEE spec says this is a PHY optional
	 * requirement.  The AMD 79C874 requires one after power up and
	 * one after a MII communications error.  This means that we are
	 * doing more preambles than we need, but it is safer and will be
	 * much more robust.
	 */

	for (i = 0; i < 32; i++)
		FUNC0(ctrl, 1);

	/* send the start bit (01) and the read opcode (10) or write (10) */
	FUNC0(ctrl, 0);
	FUNC0(ctrl, 1);
	FUNC0(ctrl, read);
	FUNC0(ctrl, !read);

	FUNC1(ctrl, phy, 5);
	FUNC1(ctrl, reg, 5);
}