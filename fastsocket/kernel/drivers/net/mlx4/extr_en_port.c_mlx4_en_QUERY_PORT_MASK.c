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
typedef  size_t u8 ;
struct mlx4_en_query_port_context {int link_up; int link_speed; int /*<<< orphan*/  transceiver; } ;
struct mlx4_en_port_state {int link_state; int link_speed; int /*<<< orphan*/  transciver; } ;
struct mlx4_en_priv {struct mlx4_en_port_state port_state; } ;
struct mlx4_en_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/ * pndev; } ;
struct mlx4_cmd_mailbox {struct mlx4_en_query_port_context* buf; int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  MLX4_CMD_QUERY_PORT ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_B ; 
 int /*<<< orphan*/  MLX4_CMD_WRAPPED ; 
#define  MLX4_EN_10G_SPEED_XAUI 131 
#define  MLX4_EN_10G_SPEED_XFI 130 
#define  MLX4_EN_1G_SPEED 129 
#define  MLX4_EN_40G_SPEED 128 
 int MLX4_EN_LINK_UP_MASK ; 
 int MLX4_EN_SPEED_MASK ; 
 int FUNC1 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_en_query_port_context*,int /*<<< orphan*/ ,int) ; 
 struct mlx4_cmd_mailbox* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct mlx4_cmd_mailbox*) ; 
 struct mlx4_en_priv* FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct mlx4_en_dev *mdev, u8 port)
{
	struct mlx4_en_query_port_context *qport_context;
	struct mlx4_en_priv *priv = FUNC6(mdev->pndev[port]);
	struct mlx4_en_port_state *state = &priv->port_state;
	struct mlx4_cmd_mailbox *mailbox;
	int err;

	mailbox = FUNC3(mdev->dev);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);
	FUNC2(mailbox->buf, 0, sizeof(*qport_context));
	err = FUNC4(mdev->dev, 0, mailbox->dma, port, 0,
			   MLX4_CMD_QUERY_PORT, MLX4_CMD_TIME_CLASS_B,
			   MLX4_CMD_WRAPPED);
	if (err)
		goto out;
	qport_context = mailbox->buf;

	/* This command is always accessed from Ethtool context
	 * already synchronized, no need in locking */
	state->link_state = !!(qport_context->link_up & MLX4_EN_LINK_UP_MASK);
	switch (qport_context->link_speed & MLX4_EN_SPEED_MASK) {
	case MLX4_EN_1G_SPEED:
		state->link_speed = 1000;
		break;
	case MLX4_EN_10G_SPEED_XAUI:
	case MLX4_EN_10G_SPEED_XFI:
		state->link_speed = 10000;
		break;
	case MLX4_EN_40G_SPEED:
		state->link_speed = 40000;
		break;
	default:
		state->link_speed = -1;
		break;
	}
	state->transciver = qport_context->transceiver;

out:
	FUNC5(mdev->dev, mailbox);
	return err;
}