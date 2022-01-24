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
struct pci_dev {int is_busmaster; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_MASTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *dev, bool enable)
{
	u16 old_cmd, cmd;

	FUNC1(dev, PCI_COMMAND, &old_cmd);
	if (enable)
		cmd = old_cmd | PCI_COMMAND_MASTER;
	else
		cmd = old_cmd & ~PCI_COMMAND_MASTER;
	if (cmd != old_cmd) {
		FUNC0(&dev->dev, "%s bus mastering\n",
			enable ? "enabling" : "disabling");
		FUNC2(dev, PCI_COMMAND, cmd);
	}
	dev->is_busmaster = enable;
}