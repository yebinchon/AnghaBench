#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lbs_private {int cmd_timed_out; int /*<<< orphan*/  driver_lock; int /*<<< orphan*/  waitq; TYPE_2__* cur_cmd; } ;
struct TYPE_4__ {TYPE_1__* cmdbuf; } ;
struct TYPE_3__ {int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int /*<<< orphan*/  LBS_DEB_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(unsigned long data)
{
	struct lbs_private *priv = (struct lbs_private *)data;
	unsigned long flags;

	FUNC0(LBS_DEB_CMD);
	FUNC4(&priv->driver_lock, flags);

	if (!priv->cur_cmd)
		goto out;

	FUNC2("command 0x%04x timed out\n",
		FUNC3(priv->cur_cmd->cmdbuf->command));

	priv->cmd_timed_out = 1;
	FUNC6(&priv->waitq);
out:
	FUNC5(&priv->driver_lock, flags);
	FUNC1(LBS_DEB_CMD);
}