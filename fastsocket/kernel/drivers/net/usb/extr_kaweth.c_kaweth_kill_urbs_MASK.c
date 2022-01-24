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
struct kaweth_device {int /*<<< orphan*/  rx_urb; int /*<<< orphan*/  irq_urb; int /*<<< orphan*/  lowmem_work; int /*<<< orphan*/  tx_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct kaweth_device *kaweth)
{
	FUNC1(kaweth->irq_urb);
	FUNC1(kaweth->rx_urb);
	FUNC1(kaweth->tx_urb);

	FUNC0(&kaweth->lowmem_work);

	/* a scheduled work may have resubmitted,
	   we hit them again */
	FUNC1(kaweth->irq_urb);
	FUNC1(kaweth->rx_urb);
}