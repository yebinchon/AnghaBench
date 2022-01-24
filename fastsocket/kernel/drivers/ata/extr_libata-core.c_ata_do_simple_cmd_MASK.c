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
typedef  int /*<<< orphan*/  u8 ;
struct ata_taskfile {int /*<<< orphan*/  protocol; int /*<<< orphan*/  flags; int /*<<< orphan*/  command; } ;
struct ata_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_PROT_NODATA ; 
 int /*<<< orphan*/  ATA_TFLAG_DEVICE ; 
 int /*<<< orphan*/  DMA_NONE ; 
 unsigned int FUNC0 (struct ata_device*,struct ata_taskfile*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_device*,struct ata_taskfile*) ; 

unsigned int FUNC2(struct ata_device *dev, u8 cmd)
{
	struct ata_taskfile tf;

	FUNC1(dev, &tf);

	tf.command = cmd;
	tf.flags |= ATA_TFLAG_DEVICE;
	tf.protocol = ATA_PROT_NODATA;

	return FUNC0(dev, &tf, NULL, DMA_NONE, NULL, 0, 0);
}