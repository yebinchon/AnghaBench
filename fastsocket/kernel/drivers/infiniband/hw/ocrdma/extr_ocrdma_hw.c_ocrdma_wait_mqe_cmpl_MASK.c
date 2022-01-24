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
struct TYPE_2__ {int cmd_done; int /*<<< orphan*/  cmd_wait; } ;
struct ocrdma_dev {TYPE_1__ mqe_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 long FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ocrdma_dev *dev)
{
	long status;
	/* 30 sec timeout */
	status = FUNC1(dev->mqe_ctx.cmd_wait,
				    (dev->mqe_ctx.cmd_done != false),
				    FUNC0(30000));
	if (status)
		return 0;
	else
		return -1;
}