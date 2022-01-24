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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  poll_sem; int /*<<< orphan*/  comm_toggle; } ;
struct mlx4_priv {TYPE_1__ cmd; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MLX4_COMM_CMD_RESET ; 
 int MLX4_DELAY_RESET_SLAVE ; 
 int FUNC0 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx4_priv* FUNC4 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,char*,...) ; 
 unsigned long FUNC6 (unsigned long) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct mlx4_dev *dev, u8 cmd, u16 param,
		       unsigned long timeout)
{
	struct mlx4_priv *priv = FUNC4(dev);
	unsigned long end;
	int err = 0;
	int ret_from_pending = 0;

	/* First, verify that the master reports correct status */
	if (FUNC0(dev)) {
		FUNC5(dev, "Communication channel is not idle."
			  "my toggle is %d (cmd:0x%x)\n",
			  priv->cmd.comm_toggle, cmd);
		return -EAGAIN;
	}

	/* Write command */
	FUNC2(&priv->cmd.poll_sem);
	FUNC3(dev, cmd, param);

	end = FUNC6(timeout) + jiffies;
	while (FUNC0(dev) && FUNC7(jiffies, end))
		FUNC1();
	ret_from_pending = FUNC0(dev);
	if (ret_from_pending) {
		/* check if the slave is trying to boot in the middle of
		 * FLR process. The only non-zero result in the RESET command
		 * is MLX4_DELAY_RESET_SLAVE*/
		if (MLX4_COMM_CMD_RESET == cmd) {
			FUNC5(dev, "Got slave FLRed from Communication"
				  " channel (ret:0x%x)\n", ret_from_pending);
			err = MLX4_DELAY_RESET_SLAVE;
		} else {
			FUNC5(dev, "Communication channel timed out\n");
			err = -ETIMEDOUT;
		}
	}

	FUNC8(&priv->cmd.poll_sem);
	return err;
}