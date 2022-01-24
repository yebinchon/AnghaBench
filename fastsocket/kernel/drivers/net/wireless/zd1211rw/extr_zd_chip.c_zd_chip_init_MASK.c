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
struct zd_chip {int /*<<< orphan*/  rf; int /*<<< orphan*/  usb; int /*<<< orphan*/  mutex; } ;
struct usb_interface {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zd_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ieee80211_hw*,struct usb_interface*) ; 

void FUNC4(struct zd_chip *chip,
	         struct ieee80211_hw *hw,
		 struct usb_interface *intf)
{
	FUNC0(chip, 0, sizeof(*chip));
	FUNC1(&chip->mutex);
	FUNC3(&chip->usb, hw, intf);
	FUNC2(&chip->rf);
}