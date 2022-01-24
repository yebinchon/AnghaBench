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
typedef  int /*<<< orphan*/  u32 ;
struct mlx4_mod_stat_cfg {int /*<<< orphan*/  log_pg_sz_m; int /*<<< orphan*/  log_pg_sz; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int /*<<< orphan*/  dma; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  MLX4_CMD_MOD_STAT_CFG ; 
 int /*<<< orphan*/  MLX4_CMD_NATIVE ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_A ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MOD_STAT_CFG_IN_SIZE ; 
 int /*<<< orphan*/  MOD_STAT_CFG_PG_SZ_M_OFFSET ; 
 int /*<<< orphan*/  MOD_STAT_CFG_PG_SZ_OFFSET ; 
 int FUNC2 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx4_cmd_mailbox* FUNC4 (struct mlx4_dev*) ; 
 int FUNC5 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ; 

int FUNC7(struct mlx4_dev *dev, struct mlx4_mod_stat_cfg *cfg)
{
	struct mlx4_cmd_mailbox *mailbox;
	u32 *inbox;
	int err = 0;

#define MOD_STAT_CFG_IN_SIZE		0x100

#define MOD_STAT_CFG_PG_SZ_M_OFFSET	0x002
#define MOD_STAT_CFG_PG_SZ_OFFSET	0x003

	mailbox = FUNC4(dev);
	if (FUNC0(mailbox))
		return FUNC2(mailbox);
	inbox = mailbox->buf;

	FUNC3(inbox, 0, MOD_STAT_CFG_IN_SIZE);

	FUNC1(inbox, cfg->log_pg_sz, MOD_STAT_CFG_PG_SZ_OFFSET);
	FUNC1(inbox, cfg->log_pg_sz_m, MOD_STAT_CFG_PG_SZ_M_OFFSET);

	err = FUNC5(dev, mailbox->dma, 0, 0, MLX4_CMD_MOD_STAT_CFG,
			MLX4_CMD_TIME_CLASS_A, MLX4_CMD_NATIVE);

	FUNC6(dev, mailbox);
	return err;
}