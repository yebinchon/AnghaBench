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
typedef  int u8 ;
typedef  int u32 ;
struct mlx4_ib_dev {int* counters; int /*<<< orphan*/  dev; } ;
struct mlx4_counter {int counter_mode; } ;
struct mlx4_cmd_mailbox {scalar_t__ buf; int /*<<< orphan*/  dma; } ;
struct ib_wc {int dummy; } ;
struct TYPE_2__ {scalar_t__ mgmt_class; } ;
struct ib_mad {int /*<<< orphan*/  data; TYPE_1__ mad_hdr; } ;
struct ib_grh {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int IB_MAD_RESULT_FAILURE ; 
 int IB_MAD_RESULT_REPLY ; 
 int IB_MAD_RESULT_SUCCESS ; 
 scalar_t__ IB_MGMT_CLASS_PERF_MGMT ; 
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  MLX4_CMD_QUERY_IF_STAT ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_C ; 
 int /*<<< orphan*/  MLX4_CMD_WRAPPED ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct mlx4_cmd_mailbox* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct mlx4_cmd_mailbox*) ; 
 struct mlx4_ib_dev* FUNC6 (struct ib_device*) ; 

__attribute__((used)) static int FUNC7(struct ib_device *ibdev, int mad_flags, u8 port_num,
			struct ib_wc *in_wc, struct ib_grh *in_grh,
			struct ib_mad *in_mad, struct ib_mad *out_mad)
{
	struct mlx4_cmd_mailbox *mailbox;
	struct mlx4_ib_dev *dev = FUNC6(ibdev);
	int err;
	u32 inmod = dev->counters[port_num - 1] & 0xffff;
	u8 mode;

	if (in_mad->mad_hdr.mgmt_class != IB_MGMT_CLASS_PERF_MGMT)
		return -EINVAL;

	mailbox = FUNC3(dev->dev);
	if (FUNC0(mailbox))
		return IB_MAD_RESULT_FAILURE;

	err = FUNC4(dev->dev, 0, mailbox->dma, inmod, 0,
			   MLX4_CMD_QUERY_IF_STAT, MLX4_CMD_TIME_CLASS_C,
			   MLX4_CMD_WRAPPED);
	if (err)
		err = IB_MAD_RESULT_FAILURE;
	else {
		FUNC2(out_mad->data, 0, sizeof out_mad->data);
		mode = ((struct mlx4_counter *)mailbox->buf)->counter_mode;
		switch (mode & 0xf) {
		case 0:
			FUNC1(mailbox->buf,
						(void *)(out_mad->data + 40));
			err = IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_REPLY;
			break;
		default:
			err = IB_MAD_RESULT_FAILURE;
		}
	}

	FUNC5(dev->dev, mailbox);

	return err;
}