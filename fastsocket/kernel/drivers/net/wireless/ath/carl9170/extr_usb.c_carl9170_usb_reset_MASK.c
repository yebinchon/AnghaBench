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
struct ar9170 {int /*<<< orphan*/  intf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC1 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct ar9170 *ar)
{
	/*
	 * This is the last resort to get the device going again
	 * without any *user replugging action*.
	 *
	 * But there is a catch: usb_reset really is like a physical
	 * *reconnect*. The mac80211 state will be lost in the process.
	 * Therefore a userspace application, which is monitoring
	 * the link must step in.
	 */
	FUNC0(ar);

	FUNC1(ar);

	FUNC2(ar->intf);
}