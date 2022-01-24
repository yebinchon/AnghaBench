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
 int ETH_ALEN ; 
 int FUNC0 (char) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char) ; 

__attribute__((used)) static void FUNC4(int instance, unsigned char *dev_addr)
{
	int i;
	char name[5], default_mac[ETH_ALEN], *mac;

	mac = NULL;
	FUNC3(name, "mac%c", 'a' + instance);
	mac = FUNC1(name);
	if (!mac) {
		FUNC3(name, "mac%c", 'a');
		mac = FUNC1(name);
	}
	if (!mac) {
		FUNC2(default_mac);
		mac = default_mac;
	}
	for (i = 0; i < 6; i++)
		dev_addr[i] = (FUNC0(mac[i * 3]) << 4) +
			FUNC0(mac[i * 3 + 1]);
}