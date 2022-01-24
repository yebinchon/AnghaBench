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
typedef  int u16 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_MEMORY ; 
 int /*<<< orphan*/  PCI_LATENCY_TIMER ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *dev)
{
	u16 cmd;
	/* Initialize the board */
	FUNC2(dev, 0x80, 0x00);
	/* Check if it is a 343 or a 363. 363 has COMMAND_MEMORY set */
	FUNC0(dev, PCI_COMMAND, &cmd);
	if (cmd & PCI_COMMAND_MEMORY)
		FUNC1(dev, PCI_LATENCY_TIMER, 0xF0);
	else
		FUNC1(dev, PCI_LATENCY_TIMER, 0x20);
}