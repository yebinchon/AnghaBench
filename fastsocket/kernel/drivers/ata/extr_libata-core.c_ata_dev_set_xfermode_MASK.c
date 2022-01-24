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
struct ata_taskfile {int flags; int nsect; int /*<<< orphan*/  protocol; int /*<<< orphan*/  feature; int /*<<< orphan*/  command; } ;
struct ata_device {int xfer_mode; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_CMD_SET_FEATURES ; 
 int /*<<< orphan*/  ATA_PROT_NODATA ; 
 int ATA_TFLAG_DEVICE ; 
 int ATA_TFLAG_ISADDR ; 
 int ATA_TFLAG_POLLING ; 
 int /*<<< orphan*/  DMA_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  SETFEATURES_XFER ; 
 unsigned int FUNC1 (struct ata_device*,struct ata_taskfile*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ata_device*,struct ata_taskfile*) ; 

__attribute__((used)) static unsigned int FUNC5(struct ata_device *dev)
{
	struct ata_taskfile tf;
	unsigned int err_mask;

	/* set up set-features taskfile */
	FUNC0("set features - xfer mode\n");

	/* Some controllers and ATAPI devices show flaky interrupt
	 * behavior after setting xfer mode.  Use polling instead.
	 */
	FUNC4(dev, &tf);
	tf.command = ATA_CMD_SET_FEATURES;
	tf.feature = SETFEATURES_XFER;
	tf.flags |= ATA_TFLAG_ISADDR | ATA_TFLAG_DEVICE | ATA_TFLAG_POLLING;
	tf.protocol = ATA_PROT_NODATA;
	/* If we are using IORDY we must send the mode setting command */
	if (FUNC3(dev))
		tf.nsect = dev->xfer_mode;
	/* If the device has IORDY and the controller does not - turn it off */
 	else if (FUNC2(dev->id))
		tf.nsect = 0x01;
	else /* In the ancient relic department - skip all of this */
		return 0;

	err_mask = FUNC1(dev, &tf, NULL, DMA_NONE, NULL, 0, 0);

	FUNC0("EXIT, err_mask=%x\n", err_mask);
	return err_mask;
}