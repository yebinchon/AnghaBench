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
struct sk_buff {int dummy; } ;
struct nes_qp {int /*<<< orphan*/  pau_lock; int /*<<< orphan*/  cm_node; int /*<<< orphan*/  pau_list; } ;
struct nes_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nes_device*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pau_qps_destroyed ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(struct nes_device *nesdev, struct nes_qp *nesqp)
{
	struct sk_buff *skb;
	unsigned long flags;
	FUNC0(&pau_qps_destroyed);

	/* Free packets that have not yet been forwarded */
	/* Lock is acquired by skb_dequeue when removing the skb */
	FUNC5(&nesqp->pau_lock, flags);
	while (FUNC4(&nesqp->pau_list)) {
		skb = FUNC3(&nesqp->pau_list);
		FUNC1(nesdev, skb, PCI_DMA_TODEVICE);
		FUNC2(nesqp->cm_node);
	}
	FUNC6(&nesqp->pau_lock, flags);
}