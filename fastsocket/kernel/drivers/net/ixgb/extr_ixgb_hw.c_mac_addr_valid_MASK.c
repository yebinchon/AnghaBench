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
typedef  scalar_t__ u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (scalar_t__*) ; 
 scalar_t__ FUNC3 (scalar_t__*) ; 

__attribute__((used)) static bool
FUNC4(u8 *mac_addr)
{
	bool is_valid = true;
	FUNC0("mac_addr_valid");

	/* Make sure it is not a multicast address */
	if (FUNC3(mac_addr)) {
		FUNC1("MAC address is multicast\n");
		is_valid = false;
	}
	/* Not a broadcast address */
	else if (FUNC2(mac_addr)) {
		FUNC1("MAC address is broadcast\n");
		is_valid = false;
	}
	/* Reject the zero address */
	else if (mac_addr[0] == 0 &&
			 mac_addr[1] == 0 &&
			 mac_addr[2] == 0 &&
			 mac_addr[3] == 0 &&
			 mac_addr[4] == 0 &&
			 mac_addr[5] == 0) {
		FUNC1("MAC address is all zeros\n");
		is_valid = false;
	}
	return (is_valid);
}