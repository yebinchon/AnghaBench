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
struct pci_channel {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  SH4A_PCIEPHYSR ; 
 scalar_t__ FUNC0 (struct pci_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_channel*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct pci_channel *chan)
{
	unsigned int timeout = 100;

	/* Initialize the phy */
	FUNC1(chan, 0x60, 0xf, 0x004b008b);
	FUNC1(chan, 0x61, 0xf, 0x00007b41);
	FUNC1(chan, 0x64, 0xf, 0x00ff4f00);
	FUNC1(chan, 0x65, 0xf, 0x09070907);
	FUNC1(chan, 0x66, 0xf, 0x00000010);
	FUNC1(chan, 0x74, 0xf, 0x0007001c);
	FUNC1(chan, 0x79, 0xf, 0x01fc000d);

	/* Deassert Standby */
	FUNC1(chan, 0x67, 0xf, 0x00000400);

	while (timeout--) {
		if (FUNC0(chan, SH4A_PCIEPHYSR))
			return 0;

		FUNC2(100);
	}

	return -ETIMEDOUT;
}