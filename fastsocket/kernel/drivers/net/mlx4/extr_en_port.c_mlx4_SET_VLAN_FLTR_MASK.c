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
typedef  int u32 ;
struct vlan_group {int dummy; } ;
struct mlx4_set_vlan_fltr_mbox {int /*<<< orphan*/ * entry; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int /*<<< orphan*/  dma; struct mlx4_set_vlan_fltr_mbox* buf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  MLX4_CMD_SET_VLAN_FLTR ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_B ; 
 int /*<<< orphan*/  MLX4_CMD_WRAPPED ; 
 int FUNC1 (struct mlx4_cmd_mailbox*) ; 
 int VLAN_FLTR_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_set_vlan_fltr_mbox*,int /*<<< orphan*/ ,int) ; 
 struct mlx4_cmd_mailbox* FUNC4 (struct mlx4_dev*) ; 
 int FUNC5 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ; 
 scalar_t__ FUNC7 (struct vlan_group*,int /*<<< orphan*/ ) ; 

int FUNC8(struct mlx4_dev *dev, u8 port, struct vlan_group *grp)
{
	struct mlx4_cmd_mailbox *mailbox;
	struct mlx4_set_vlan_fltr_mbox *filter;
	int i;
	int j;
	int index = 0;
	u32 entry;
	int err = 0;

	mailbox = FUNC4(dev);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);

	filter = mailbox->buf;
	if (grp) {
		FUNC3(filter, 0, sizeof *filter);
		for (i = VLAN_FLTR_SIZE - 1; i >= 0; i--) {
			entry = 0;
			for (j = 0; j < 32; j++)
				if (FUNC7(grp, index++))
					entry |= 1 << j;
			filter->entry[i] = FUNC2(entry);
		}
	} else {
		/* When no vlans are configured we block all vlans */
		FUNC3(filter, 0, sizeof(*filter));
	}
	err = FUNC5(dev, mailbox->dma, port, 0, MLX4_CMD_SET_VLAN_FLTR,
		       MLX4_CMD_TIME_CLASS_B, MLX4_CMD_WRAPPED);
	FUNC6(dev, mailbox);
	return err;
}