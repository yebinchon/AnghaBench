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
struct zd_usb_rx {int /*<<< orphan*/  setup_mutex; } ;
struct zd_usb {struct zd_usb_rx rx; } ;

/* Variables and functions */
 int FUNC0 (struct zd_usb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct zd_usb*) ; 

int FUNC4(struct zd_usb *usb)
{
	int r;
	struct zd_usb_rx *rx = &usb->rx;

	FUNC1(&rx->setup_mutex);
	r = FUNC0(usb);
	FUNC2(&rx->setup_mutex);

	FUNC3(usb);

	return r;
}