#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mlx4_ib_dev {TYPE_2__* dev; } ;
struct mlx4_cmd_mailbox {int /*<<< orphan*/  dma; scalar_t__ buf; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_5__ {scalar_t__* port_type; } ;
struct TYPE_6__ {int flags; TYPE_1__ caps; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  MLX4_CMD_NATIVE ; 
 int /*<<< orphan*/  MLX4_CMD_SET_PORT ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_B ; 
 int MLX4_FLAG_OLD_PORT_CMDS ; 
 scalar_t__ MLX4_PORT_TYPE_ETH ; 
 int FUNC1 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 struct mlx4_cmd_mailbox* FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct mlx4_cmd_mailbox*) ; 

__attribute__((used)) static int FUNC7(struct mlx4_ib_dev *dev, u8 port, int reset_qkey_viols,
			 u32 cap_mask)
{
	struct mlx4_cmd_mailbox *mailbox;
	int err;
	u8 is_eth = dev->dev->caps.port_type[port] == MLX4_PORT_TYPE_ETH;

	mailbox = FUNC4(dev->dev);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);

	FUNC3(mailbox->buf, 0, 256);

	if (dev->dev->flags & MLX4_FLAG_OLD_PORT_CMDS) {
		*(u8 *) mailbox->buf	     = !!reset_qkey_viols << 6;
		((__be32 *) mailbox->buf)[2] = FUNC2(cap_mask);
	} else {
		((u8 *) mailbox->buf)[3]     = !!reset_qkey_viols;
		((__be32 *) mailbox->buf)[1] = FUNC2(cap_mask);
	}

	err = FUNC5(dev->dev, mailbox->dma, port, is_eth, MLX4_CMD_SET_PORT,
		       MLX4_CMD_TIME_CLASS_B, MLX4_CMD_NATIVE);

	FUNC6(dev->dev, mailbox);
	return err;
}