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
struct zd_usb_rx {int /*<<< orphan*/  setup_mutex; int /*<<< orphan*/  lock; int /*<<< orphan*/ * urbs; } ;
struct zd_usb {struct zd_usb_rx rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zd_usb*) ; 
 int /*<<< orphan*/  FUNC1 (struct zd_usb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct zd_usb*) ; 

__attribute__((used)) static void FUNC7(struct zd_usb *usb)
{
	bool do_reset;
	struct zd_usb_rx *rx = &usb->rx;
	unsigned long flags;

	FUNC2(&rx->setup_mutex);

	FUNC4(&rx->lock, flags);
	do_reset = rx->urbs != NULL;
	FUNC5(&rx->lock, flags);

	if (do_reset) {
		FUNC0(usb);
		FUNC1(usb);
	}

	FUNC3(&rx->setup_mutex);

	if (do_reset)
		FUNC6(usb);
}