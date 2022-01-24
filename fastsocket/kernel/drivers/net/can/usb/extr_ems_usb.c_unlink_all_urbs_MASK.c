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
struct ems_usb {TYPE_1__* tx_contexts; int /*<<< orphan*/  active_tx_urbs; int /*<<< orphan*/  tx_submitted; int /*<<< orphan*/  rx_submitted; int /*<<< orphan*/  intr_urb; } ;
struct TYPE_2__ {int echo_index; } ;

/* Variables and functions */
 int MAX_TX_URBS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ems_usb *dev)
{
	int i;

	FUNC2(dev->intr_urb);

	FUNC1(&dev->rx_submitted);

	FUNC1(&dev->tx_submitted);
	FUNC0(&dev->active_tx_urbs, 0);

	for (i = 0; i < MAX_TX_URBS; i++)
		dev->tx_contexts[i].echo_index = MAX_TX_URBS;
}