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
struct mlx4_ib_dev {int /*<<< orphan*/  sm_lock; int /*<<< orphan*/ * sm_ah; struct ib_mad_agent*** send_agent; } ;
struct ib_mad_send_buf {int /*<<< orphan*/  ah; int /*<<< orphan*/  mad; } ;
struct ib_mad_agent {int dummy; } ;
struct TYPE_2__ {scalar_t__ mgmt_class; } ;
struct ib_mad {TYPE_1__ mad_hdr; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ IB_MGMT_CLASS_SUBN_LID_ROUTED ; 
 int /*<<< orphan*/  IB_MGMT_MAD_DATA ; 
 int /*<<< orphan*/  IB_MGMT_MAD_HDR ; 
 scalar_t__ FUNC0 (struct ib_mad_send_buf*) ; 
 struct ib_mad_send_buf* FUNC1 (struct ib_mad_agent*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_mad_send_buf*) ; 
 int FUNC3 (struct ib_mad_send_buf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ib_mad*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct mlx4_ib_dev *dev, u8 port_num, struct ib_mad *mad)
{
	int qpn = mad->mad_hdr.mgmt_class != IB_MGMT_CLASS_SUBN_LID_ROUTED;
	struct ib_mad_send_buf *send_buf;
	struct ib_mad_agent *agent = dev->send_agent[port_num - 1][qpn];
	int ret;
	unsigned long flags;

	if (agent) {
		send_buf = FUNC1(agent, qpn, 0, 0, IB_MGMT_MAD_HDR,
					      IB_MGMT_MAD_DATA, GFP_ATOMIC);
		if (FUNC0(send_buf))
			return;
		/*
		 * We rely here on the fact that MLX QPs don't use the
		 * address handle after the send is posted (this is
		 * wrong following the IB spec strictly, but we know
		 * it's OK for our devices).
		 */
		FUNC5(&dev->sm_lock, flags);
		FUNC4(send_buf->mad, mad, sizeof *mad);
		if ((send_buf->ah = dev->sm_ah[port_num - 1]))
			ret = FUNC3(send_buf, NULL);
		else
			ret = -EINVAL;
		FUNC6(&dev->sm_lock, flags);

		if (ret)
			FUNC2(send_buf);
	}
}