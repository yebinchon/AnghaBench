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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  bt_mrvl_sdio ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ user_rmmod ; 

__attribute__((used)) static int FUNC2(void)
{
	if (FUNC1(&bt_mrvl_sdio) != 0) {
		FUNC0("SDIO Driver Registration Failed");
		return -ENODEV;
	}

	/* Clear the flag in case user removes the card. */
	user_rmmod = 0;

	return 0;
}