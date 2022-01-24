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
typedef  int /*<<< orphan*/  u8 ;
struct wl1251 {int /*<<< orphan*/ * mac_addr; } ;
typedef  int /*<<< orphan*/  mac ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  REGISTERS_BASE ; 
 int /*<<< orphan*/  REGISTERS_DOWN_SIZE ; 
 int FUNC0 (struct wl1251*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wl1251*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct wl1251 *wl)
{
	u8 mac[ETH_ALEN];
	int i, ret;

	FUNC1(wl, 0, 0, REGISTERS_BASE, REGISTERS_DOWN_SIZE);

	ret = FUNC0(wl, 0x1c, mac, sizeof(mac));
	if (ret < 0) {
		FUNC2("failed to read MAC address from EEPROM");
		return ret;
	}

	/* MAC is stored in reverse order */
	for (i = 0; i < ETH_ALEN; i++)
		wl->mac_addr[i] = mac[ETH_ALEN - i - 1];

	return 0;
}