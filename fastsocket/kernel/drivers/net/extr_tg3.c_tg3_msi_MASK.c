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
struct tg3_napi {size_t rx_rcb_ptr; int /*<<< orphan*/  napi; int /*<<< orphan*/  int_mbox; int /*<<< orphan*/ * rx_rcb; int /*<<< orphan*/ * hw_status; struct tg3* tp; } ;
struct tg3 {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct tg3_napi *tnapi = dev_id;
	struct tg3 *tp = tnapi->tp;

	FUNC3(tnapi->hw_status);
	if (tnapi->rx_rcb)
		FUNC3(&tnapi->rx_rcb[tnapi->rx_rcb_ptr]);
	/*
	 * Writing any value to intr-mbox-0 clears PCI INTA# and
	 * chip-internal interrupt pending events.
	 * Writing non-zero to intr-mbox-0 additional tells the
	 * NIC to stop sending us irqs, engaging "in-intr-handler"
	 * event coalescing.
	 */
	FUNC5(tnapi->int_mbox, 0x00000001);
	if (FUNC1(!FUNC4(tp)))
		FUNC2(&tnapi->napi);

	return FUNC0(1);
}