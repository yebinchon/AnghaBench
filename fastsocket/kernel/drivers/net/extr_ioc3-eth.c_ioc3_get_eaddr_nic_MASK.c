#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ioc3_private {struct ioc3* regs; } ;
struct ioc3 {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ioc3*) ; 
 int /*<<< orphan*/  FUNC2 (struct ioc3*) ; 
 int /*<<< orphan*/  FUNC3 (struct ioc3*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_1__* FUNC5 (struct ioc3_private*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct ioc3_private *ip)
{
	struct ioc3 *ioc3 = ip->regs;
	u8 nic[14];
	int tries = 2; /* There may be some problem with the battery?  */
	int i;

	FUNC0(1 << 21);

	while (tries--) {
		if (!FUNC1(ioc3))
			break;
		FUNC6(500);
	}

	if (tries < 0) {
		FUNC4("Failed to read MAC address\n");
		return;
	}

	/* Read Memory.  */
	FUNC3(ioc3, 0xf0);
	FUNC3(ioc3, 0x00);
	FUNC3(ioc3, 0x00);

	for (i = 13; i >= 0; i--)
		nic[i] = FUNC2(ioc3);

	for (i = 2; i < 8; i++)
		FUNC5(ip)->dev_addr[i - 2] = nic[i];
}