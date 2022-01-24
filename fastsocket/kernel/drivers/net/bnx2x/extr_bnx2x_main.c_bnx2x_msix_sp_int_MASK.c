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
struct net_device {int dummy; } ;
struct cnic_ops {int /*<<< orphan*/  (* cnic_handler ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct bnx2x {int /*<<< orphan*/  cnic_data; int /*<<< orphan*/  cnic_ops; int /*<<< orphan*/  panic; int /*<<< orphan*/  igu_dsb_id; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  IGU_INT_DISABLE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  USTORM_ID ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 struct bnx2x* FUNC3 (struct net_device*) ; 
 struct cnic_ops* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

irqreturn_t FUNC9(int irq, void *dev_instance)
{
	struct net_device *dev = dev_instance;
	struct bnx2x *bp = FUNC3(dev);

	FUNC1(bp, bp->igu_dsb_id, USTORM_ID, 0,
		     IGU_INT_DISABLE, 0);

#ifdef BNX2X_STOP_ON_ERROR
	if (unlikely(bp->panic))
		return IRQ_HANDLED;
#endif

	if (FUNC0(bp)) {
		struct cnic_ops *c_ops;

		FUNC5();
		c_ops = FUNC4(bp->cnic_ops);
		if (c_ops)
			c_ops->cnic_handler(bp->cnic_data, NULL);
		FUNC6();
	}

	/* schedule sp task to perform default status block work, ack
	 * attentions and enable interrupts.
	 */
	FUNC2(bp);

	return IRQ_HANDLED;
}