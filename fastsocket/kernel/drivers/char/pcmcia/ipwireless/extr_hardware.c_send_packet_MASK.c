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
struct ipw_tx_packet {int /*<<< orphan*/  queue; } ;
struct ipw_hardware {int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_queued; int /*<<< orphan*/ * tx_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipw_hardware*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct ipw_hardware *hw, int priority,
			struct ipw_tx_packet *packet)
{
	unsigned long flags;

	FUNC2(&hw->lock, flags);
	FUNC1(&packet->queue, &hw->tx_queue[priority]);
	hw->tx_queued++;
	FUNC3(&hw->lock, flags);

	FUNC0(hw);
}