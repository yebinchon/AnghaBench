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
 int BITS_ACK ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  SH4A_PCIEPHYADRR ; 
 int FUNC0 (struct pci_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct pci_channel *chan)
{
	unsigned int timeout = 100;

	while (timeout--) {
		if (FUNC0(chan, SH4A_PCIEPHYADRR) & (1 << BITS_ACK))
			return 0;

		FUNC1(100);
	}

	return -ETIMEDOUT;
}