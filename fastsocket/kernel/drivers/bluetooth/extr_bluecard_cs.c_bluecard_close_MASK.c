#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct hci_dev {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int ctrl_reg; int /*<<< orphan*/  hw_state; struct hci_dev* hdev; TYPE_2__* p_dev; } ;
typedef  TYPE_3__ bluecard_info_t ;
struct TYPE_5__ {unsigned int BasePort1; } ;
struct TYPE_6__ {TYPE_1__ io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CARD_READY ; 
 int ENODEV ; 
 unsigned int REG_CONTROL ; 
 int REG_CONTROL_BT_RESET ; 
 int REG_CONTROL_CARD_RESET ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 scalar_t__ FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned int) ; 

__attribute__((used)) static int FUNC6(bluecard_info_t *info)
{
	unsigned int iobase = info->p_dev->io.BasePort1;
	struct hci_dev *hdev = info->hdev;

	if (!hdev)
		return -ENODEV;

	FUNC1(hdev);

	FUNC2(CARD_READY, &(info->hw_state));

	/* Reset card */
	info->ctrl_reg = REG_CONTROL_BT_RESET | REG_CONTROL_CARD_RESET;
	FUNC5(info->ctrl_reg, iobase + REG_CONTROL);

	/* Turn FPGA off */
	FUNC5(0x80, iobase + 0x30);

	if (FUNC4(hdev) < 0)
		FUNC0("Can't unregister HCI device %s", hdev->name);

	FUNC3(hdev);

	return 0;
}