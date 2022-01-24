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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int PCI_CACHE_LINE_SIZE ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 unsigned short PCI_COMMAND_FAST_BACK ; 
 unsigned short PCI_COMMAND_MASTER ; 
 int PCI_LATENCY_TIMER ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,unsigned short*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,unsigned short) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *dev)
{
	unsigned short cfgword;
	unsigned char lt;

	/* Enable Bus Mastering and fast back to back. */
	FUNC1(dev, PCI_COMMAND, &cfgword);
	cfgword |= (PCI_COMMAND_FAST_BACK | PCI_COMMAND_MASTER);
	FUNC3(dev, PCI_COMMAND, cfgword);

	/* Enable both ide interfaces. ROM only enables primary one.  */
	FUNC2(dev, 0x40, 0xb);

	/* Set latency timer to reasonable value. */
	FUNC0(dev, PCI_LATENCY_TIMER, &lt);
	if (lt < 64)
		FUNC2(dev, PCI_LATENCY_TIMER, 64);
	FUNC2(dev, PCI_CACHE_LINE_SIZE, 8);
}