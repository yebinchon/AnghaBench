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
typedef  int u8 ;
typedef  int u32 ;
struct mlx4_qp {unsigned int qpn; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  bitmap; } ;
struct mlx4_priv {TYPE_2__ mcg_table; } ;
struct mlx4_mgm {void* next_gid_index; void* members_count; void** qp; int /*<<< orphan*/  gid; } ;
struct TYPE_3__ {int num_mgms; int num_qp_per_mgm; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cmd_mailbox {struct mlx4_mgm* buf; } ;
typedef  enum mlx4_steer_type { ____Placeholder_mlx4_steer_type } mlx4_steer_type ;
typedef  enum mlx4_protocol { ____Placeholder_mlx4_protocol } mlx4_protocol ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 unsigned int MGM_BLCK_LB_BIT ; 
 unsigned int MGM_QPN_MASK ; 
 int MLX4_PROT_ETH ; 
 int FUNC1 (struct mlx4_cmd_mailbox*) ; 
 unsigned int FUNC2 (void*) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,int,int,int,unsigned int) ; 
 int FUNC5 (struct mlx4_dev*,int,int*,int,struct mlx4_cmd_mailbox*,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_mgm*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct mlx4_dev*,int,struct mlx4_cmd_mailbox*) ; 
 int FUNC9 (struct mlx4_dev*,int,struct mlx4_cmd_mailbox*) ; 
 struct mlx4_cmd_mailbox* FUNC10 (struct mlx4_dev*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (struct mlx4_dev*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct mlx4_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ; 
 struct mlx4_priv* FUNC16 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct mlx4_dev*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct mlx4_dev*,int,int,int,unsigned int) ; 

int FUNC21(struct mlx4_dev *dev, struct mlx4_qp *qp, u8 gid[16],
			  int block_mcast_loopback, enum mlx4_protocol prot,
			  enum mlx4_steer_type steer)
{
	struct mlx4_priv *priv = FUNC16(dev);
	struct mlx4_cmd_mailbox *mailbox;
	struct mlx4_mgm *mgm;
	u32 members_count;
	int index, prev;
	int link = 0;
	int i;
	int err;
	u8 port = gid[5];
	u8 new_entry = 0;

	mailbox = FUNC10(dev);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);
	mgm = mailbox->buf;

	FUNC18(&priv->mcg_table.mutex);
	err = FUNC5(dev, port, gid, prot,
			 mailbox, &prev, &index);
	if (err)
		goto out;

	if (index != -1) {
		if (!(FUNC2(mgm->members_count) & 0xffffff)) {
			new_entry = 1;
			FUNC6(mgm->gid, gid, 16);
		}
	} else {
		link = 1;

		index = FUNC11(&priv->mcg_table.bitmap);
		if (index == -1) {
			FUNC14(dev, "No AMGM entries left\n");
			err = -ENOMEM;
			goto out;
		}
		index += dev->caps.num_mgms;

		new_entry = 1;
		FUNC7(mgm, 0, sizeof *mgm);
		FUNC6(mgm->gid, gid, 16);
	}

	members_count = FUNC2(mgm->members_count) & 0xffffff;
	if (members_count == dev->caps.num_qp_per_mgm) {
		FUNC14(dev, "MGM at index %x is full.\n", index);
		err = -ENOMEM;
		goto out;
	}

	for (i = 0; i < members_count; ++i)
		if ((FUNC2(mgm->qp[i]) & MGM_QPN_MASK) == qp->qpn) {
			FUNC13(dev, "QP %06x already a member of MGM\n", qp->qpn);
			err = 0;
			goto out;
		}

	if (block_mcast_loopback)
		mgm->qp[members_count++] = FUNC3((qp->qpn & MGM_QPN_MASK) |
						       (1U << MGM_BLCK_LB_BIT));
	else
		mgm->qp[members_count++] = FUNC3(qp->qpn & MGM_QPN_MASK);

	mgm->members_count = FUNC3(members_count | (u32) prot << 30);

	err = FUNC9(dev, index, mailbox);
	if (err)
		goto out;

	if (!link)
		goto out;

	err = FUNC8(dev, prev, mailbox);
	if (err)
		goto out;

	mgm->next_gid_index = FUNC3(index << 6);

	err = FUNC9(dev, prev, mailbox);
	if (err)
		goto out;

out:
	if (prot == MLX4_PROT_ETH) {
		/* manage the steering entry for promisc mode */
		if (new_entry)
			FUNC20(dev, port, steer, index, qp->qpn);
		else
			FUNC4(dev, port, steer,
						index, qp->qpn);
	}
	if (err && link && index != -1) {
		if (index < dev->caps.num_mgms)
			FUNC17(dev, "Got AMGM index %d < %d",
				  index, dev->caps.num_mgms);
		else
			FUNC12(&priv->mcg_table.bitmap,
					 index - dev->caps.num_mgms);
	}
	FUNC19(&priv->mcg_table.mutex);

	FUNC15(dev, mailbox);
	return err;
}