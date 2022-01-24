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
typedef  size_t u8 ;
struct TYPE_2__ {scalar_t__* port_type; int* port_ib_mtu; int /*<<< orphan*/ * ib_port_def_cap; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cmd_mailbox {int /*<<< orphan*/  dma; scalar_t__ buf; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int MLX4_CHANGE_PORT_MTU_CAP ; 
 int MLX4_CHANGE_PORT_PKEY_TBL_SZ ; 
 int MLX4_CHANGE_PORT_VL_CAP ; 
 int /*<<< orphan*/  MLX4_CMD_SET_PORT ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_B ; 
 int /*<<< orphan*/  MLX4_CMD_WRAPPED ; 
 scalar_t__ MLX4_PORT_TYPE_ETH ; 
 int MLX4_SET_PORT_MTU_CAP ; 
 int MLX4_SET_PORT_VL_CAP ; 
 int FUNC1 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 struct mlx4_cmd_mailbox* FUNC5 (struct mlx4_dev*) ; 
 int FUNC6 (struct mlx4_dev*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ; 
 scalar_t__ FUNC8 (struct mlx4_dev*) ; 

int FUNC9(struct mlx4_dev *dev, u8 port, int pkey_tbl_sz)
{
	struct mlx4_cmd_mailbox *mailbox;
	int err, vl_cap, pkey_tbl_flag = 0;

	if (dev->caps.port_type[port] == MLX4_PORT_TYPE_ETH)
		return 0;

	mailbox = FUNC5(dev);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);

	FUNC4(mailbox->buf, 0, 256);

	((__be32 *) mailbox->buf)[1] = dev->caps.ib_port_def_cap[port];

	if (pkey_tbl_sz >= 0 && FUNC8(dev)) {
		pkey_tbl_flag = 1;
		((__be16 *) mailbox->buf)[20] = FUNC2(pkey_tbl_sz);
	}

	/* IB VL CAP enum isn't used by the firmware, just numerical values */
	for (vl_cap = 8; vl_cap >= 1; vl_cap >>= 1) {
		((__be32 *) mailbox->buf)[0] = FUNC3(
			(1 << MLX4_CHANGE_PORT_MTU_CAP) |
			(1 << MLX4_CHANGE_PORT_VL_CAP)  |
			(pkey_tbl_flag << MLX4_CHANGE_PORT_PKEY_TBL_SZ) |
			(dev->caps.port_ib_mtu[port] << MLX4_SET_PORT_MTU_CAP) |
			(vl_cap << MLX4_SET_PORT_VL_CAP));
		err = FUNC6(dev, mailbox->dma, port, 0, MLX4_CMD_SET_PORT,
				MLX4_CMD_TIME_CLASS_B, MLX4_CMD_WRAPPED);
		if (err != -ENOMEM)
			break;
	}

	FUNC7(dev, mailbox);
	return err;
}