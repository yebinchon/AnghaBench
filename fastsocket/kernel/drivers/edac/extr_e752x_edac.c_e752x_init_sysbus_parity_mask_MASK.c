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
struct pci_dev {int dummy; } ;
struct e752x_pvt {struct pci_dev* dev_d0f1; } ;
struct TYPE_2__ {char* x86_model_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  E752X_SYSBUS_ERRMASK ; 
 int /*<<< orphan*/  KERN_INFO ; 
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int sysbus_parity ; 

__attribute__((used)) static void FUNC4(struct e752x_pvt *pvt)
{
	char *cpu_id = FUNC0(0).x86_model_id;
	struct pci_dev *dev = pvt->dev_d0f1;
	int enable = 1;

	/* Allow module parameter override, else see if CPU supports parity */
	if (sysbus_parity != -1) {
		enable = sysbus_parity;
	} else if (cpu_id[0] &&
		   ((FUNC3(cpu_id, "Pentium") && FUNC3(cpu_id, " M ")) ||
		    (FUNC3(cpu_id, "Celeron") && FUNC3(cpu_id, " M ")) ||
		    (FUNC3(cpu_id, "Core") && FUNC3(cpu_id, "Duo")))) {
		FUNC1(KERN_INFO, "System Bus Parity not "
			     "supported by CPU, disabling\n");
		enable = 0;
	}

	if (enable)
		FUNC2(dev, E752X_SYSBUS_ERRMASK, 0x0000);
	else
		FUNC2(dev, E752X_SYSBUS_ERRMASK, 0x0309);
}