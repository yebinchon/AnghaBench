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
struct zd_usb {int /*<<< orphan*/  intf; scalar_t__ was_running; } ;
struct zd_mac {scalar_t__ type; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ; 
 int /*<<< orphan*/  ZD_DEVICE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct zd_mac*) ; 
 int /*<<< orphan*/  FUNC7 (struct zd_usb*) ; 
 int /*<<< orphan*/  FUNC8 (struct zd_usb*) ; 
 struct zd_mac* FUNC9 (struct zd_usb*) ; 

__attribute__((used)) static void FUNC10(struct zd_usb *usb)
{
	struct zd_mac *mac = FUNC9(usb);
	int r;

	FUNC1(FUNC7(usb), "\n");

	r = FUNC5(FUNC8(usb));
	if (r < 0) {
		FUNC2(FUNC7(usb), "Device resume failed "
			 "with error code %d. Retrying...\n", r);
		if (usb->was_running)
			FUNC3(ZD_DEVICE_RUNNING, &mac->flags);
		FUNC4(usb->intf);
		return;
	}

	if (mac->type != NL80211_IFTYPE_UNSPECIFIED) {
		r = FUNC6(mac);
		if (r < 0) {
			FUNC0(FUNC7(usb),
				"failed to restore settings, %d\n", r);
			return;
		}
	}
}