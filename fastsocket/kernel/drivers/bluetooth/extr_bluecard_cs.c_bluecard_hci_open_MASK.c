#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct hci_dev {int /*<<< orphan*/  flags; scalar_t__ driver_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  hw_state; TYPE_2__* p_dev; } ;
typedef  TYPE_3__ bluecard_info_t ;
struct TYPE_4__ {unsigned int BasePort1; } ;
struct TYPE_5__ {TYPE_1__ io; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_HAS_PCCARD_ID ; 
 int /*<<< orphan*/  DEFAULT_BAUD_RATE ; 
 int /*<<< orphan*/  HCI_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct hci_dev *hdev)
{
	bluecard_info_t *info = (bluecard_info_t *)(hdev->driver_data);
	unsigned int iobase = info->p_dev->io.BasePort1;

	if (FUNC3(CARD_HAS_PCCARD_ID, &(info->hw_state)))
		FUNC0(hdev, DEFAULT_BAUD_RATE);

	if (FUNC2(HCI_RUNNING, &(hdev->flags)))
		return 0;

	if (FUNC3(CARD_HAS_PCCARD_ID, &(info->hw_state))) {
		/* Enable LED */
		FUNC1(0x08 | 0x20, iobase + 0x30);
	}

	return 0;
}