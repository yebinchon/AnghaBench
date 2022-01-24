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
typedef  int u8 ;
struct net_device {int /*<<< orphan*/  mtu; } ;
struct mlx4_ib_iboe {int /*<<< orphan*/  lock; struct net_device** netdevs; } ;
struct mlx4_ib_dev {TYPE_2__* dev; struct mlx4_ib_iboe iboe; } ;
struct mlx4_cmd_mailbox {scalar_t__ buf; int /*<<< orphan*/  dma; } ;
struct ib_port_attr {int pkey_tbl_len; int max_vl_num; void* state; void* phys_state; int /*<<< orphan*/  max_mtu; void* active_mtu; int /*<<< orphan*/  max_msg_sz; int /*<<< orphan*/  gid_tbl_len; int /*<<< orphan*/  port_cap_flags; int /*<<< orphan*/  active_speed; int /*<<< orphan*/  active_width; } ;
struct ib_device {int dummy; } ;
typedef  enum ib_mtu { ____Placeholder_ib_mtu } ib_mtu ;
struct TYPE_5__ {int /*<<< orphan*/  max_msg_sz; int /*<<< orphan*/ * gid_table_len; } ;
struct TYPE_6__ {TYPE_1__ caps; } ;

/* Variables and functions */
 void* IB_MTU_256 ; 
 int /*<<< orphan*/  IB_MTU_4096 ; 
 void* IB_PORT_ACTIVE ; 
 int /*<<< orphan*/  IB_PORT_CM_SUP ; 
 void* IB_PORT_DOWN ; 
 int /*<<< orphan*/  IB_SPEED_QDR ; 
 int /*<<< orphan*/  IB_WIDTH_1X ; 
 int /*<<< orphan*/  IB_WIDTH_4X ; 
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  MLX4_CMD_QUERY_PORT ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_B ; 
 int /*<<< orphan*/  MLX4_CMD_WRAPPED ; 
 int FUNC1 (struct mlx4_cmd_mailbox*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct mlx4_cmd_mailbox* FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct mlx4_cmd_mailbox*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 void* FUNC11 (void*) ; 
 struct mlx4_ib_dev* FUNC12 (struct ib_device*) ; 

__attribute__((used)) static int FUNC13(struct ib_device *ibdev, u8 port,
			       struct ib_port_attr *props, int netw_view)
{

	struct mlx4_ib_dev *mdev = FUNC12(ibdev);
	struct mlx4_ib_iboe *iboe = &mdev->iboe;
	struct net_device *ndev;
	enum ib_mtu tmp;
	struct mlx4_cmd_mailbox *mailbox;
	int err = 0;

	mailbox = FUNC4(mdev->dev);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);

	err = FUNC5(mdev->dev, 0, mailbox->dma, port, 0,
			   MLX4_CMD_QUERY_PORT, MLX4_CMD_TIME_CLASS_B,
			   MLX4_CMD_WRAPPED);
	if (err)
		goto out;

	props->active_width	=  (((u8 *)mailbox->buf)[5] == 0x40) ?
						IB_WIDTH_4X : IB_WIDTH_1X;
	props->active_speed	= IB_SPEED_QDR;
	props->port_cap_flags	= IB_PORT_CM_SUP;
	props->gid_tbl_len	= mdev->dev->caps.gid_table_len[port];
	props->max_msg_sz	= mdev->dev->caps.max_msg_sz;
	props->pkey_tbl_len	= 1;
	props->max_mtu		= IB_MTU_4096;
	props->max_vl_num	= 2;
	props->state		= IB_PORT_DOWN;
	props->phys_state	= FUNC11(props->state);
	props->active_mtu	= IB_MTU_256;
	FUNC9(&iboe->lock);
	ndev = iboe->netdevs[port - 1];
	if (!ndev)
		goto out_unlock;

	tmp = FUNC2(ndev->mtu);
	props->active_mtu = tmp ? FUNC3(props->max_mtu, tmp) : IB_MTU_256;

	props->state		= (FUNC8(ndev) && FUNC7(ndev)) ?
					IB_PORT_ACTIVE : IB_PORT_DOWN;
	props->phys_state	= FUNC11(props->state);
out_unlock:
	FUNC10(&iboe->lock);
out:
	FUNC6(mdev->dev, mailbox);
	return err;
}