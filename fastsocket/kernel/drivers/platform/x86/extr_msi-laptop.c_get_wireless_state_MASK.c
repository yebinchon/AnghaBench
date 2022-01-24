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
typedef  int u8 ;

/* Variables and functions */
 int /*<<< orphan*/  MSI_EC_COMMAND_WIRELESS ; 
 int FUNC0 (int /*<<< orphan*/ ,int*,int,int*,int,int) ; 

__attribute__((used)) static int FUNC1(int *wlan, int *bluetooth)
{
	u8 wdata = 0, rdata;
	int result;

	result = FUNC0(MSI_EC_COMMAND_WIRELESS, &wdata, 1, &rdata, 1, 1);
	if (result < 0)
		return -1;

	if (wlan)
		*wlan = !!(rdata & 8);

	if (bluetooth)
		*bluetooth = !!(rdata & 128);

	return 0;
}