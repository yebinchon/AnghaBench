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
typedef  void* u8 ;
struct ata_taskfile {int flags; void* nsect; int /*<<< orphan*/  protocol; void* feature; int /*<<< orphan*/  command; } ;
struct ata_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_CMD_SET_FEATURES ; 
 int /*<<< orphan*/  ATA_PROT_NODATA ; 
 int ATA_TFLAG_DEVICE ; 
 int ATA_TFLAG_ISADDR ; 
 int /*<<< orphan*/  DMA_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 unsigned int FUNC1 (struct ata_device*,struct ata_taskfile*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_device*,struct ata_taskfile*) ; 

__attribute__((used)) static unsigned int FUNC3(struct ata_device *dev, u8 enable,
					u8 feature)
{
	struct ata_taskfile tf;
	unsigned int err_mask;

	/* set up set-features taskfile */
	FUNC0("set features - SATA features\n");

	FUNC2(dev, &tf);
	tf.command = ATA_CMD_SET_FEATURES;
	tf.feature = enable;
	tf.flags |= ATA_TFLAG_ISADDR | ATA_TFLAG_DEVICE;
	tf.protocol = ATA_PROT_NODATA;
	tf.nsect = feature;

	err_mask = FUNC1(dev, &tf, NULL, DMA_NONE, NULL, 0, 0);

	FUNC0("EXIT, err_mask=%x\n", err_mask);
	return err_mask;
}