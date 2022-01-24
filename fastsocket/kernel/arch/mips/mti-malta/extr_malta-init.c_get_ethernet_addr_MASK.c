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
 int init_debug ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

int FUNC3(char *ethernet_addr)
{
        char *ethaddr_str;

        ethaddr_str = FUNC1("ethaddr");
	if (!ethaddr_str) {
	        FUNC0("ethaddr not set in boot prom\n");
		return -1;
	}
	FUNC2(ethernet_addr, ethaddr_str);

	if (init_debug > 1) {
	        int i;
		FUNC0("get_ethernet_addr: ");
	        for (i=0; i<5; i++)
		        FUNC0("%02x:", (unsigned char)*(ethernet_addr+i));
		FUNC0("%02x\n", *(ethernet_addr+i));
	}

	return 0;
}