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
 int EIO ; 
 int TP_HOTKEY_TABLET_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,char*,char*) ; 
 int /*<<< orphan*/  hkey_handle ; 

__attribute__((used)) static int FUNC1(int *status)
{
	int s;

	if (!FUNC0(hkey_handle, &s, "MHKG", "d"))
		return -EIO;

	*status = ((s & TP_HOTKEY_TABLET_MASK) != 0);
	return 0;
}