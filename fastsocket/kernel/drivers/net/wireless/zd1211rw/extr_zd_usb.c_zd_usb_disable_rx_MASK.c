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
struct zd_usb_rx {int /*<<< orphan*/  idle_work; int /*<<< orphan*/  reset_timer_tasklet; int /*<<< orphan*/  setup_mutex; } ;
struct zd_usb {struct zd_usb_rx rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zd_usb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct zd_usb *usb)
{
	struct zd_usb_rx *rx = &usb->rx;

	FUNC2(&rx->setup_mutex);
	FUNC0(usb);
	FUNC3(&rx->setup_mutex);

	FUNC4(&rx->reset_timer_tasklet);
	FUNC1(&rx->idle_work);
}