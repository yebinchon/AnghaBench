#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct ata_device {TYPE_2__* link; } ;
struct TYPE_4__ {TYPE_1__* ap; } ;
struct TYPE_3__ {scalar_t__* sector_buf; } ;

/* Variables and functions */
 unsigned int AC_ERR_DEV ; 
 int ATA_EH_UA_TRIES ; 
 int EIO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 scalar_t__ UNIT_ATTENTION ; 
 int /*<<< orphan*/  FUNC0 (struct ata_device*,int /*<<< orphan*/ ,char*,int) ; 
 unsigned int FUNC1 (struct ata_device*,scalar_t__*,scalar_t__) ; 
 unsigned int FUNC2 (struct ata_device*,scalar_t__*) ; 

__attribute__((used)) static int FUNC3(struct ata_device *dev)
{
	int i;

	for (i = 0; i < ATA_EH_UA_TRIES; i++) {
		u8 *sense_buffer = dev->link->ap->sector_buf;
		u8 sense_key = 0;
		unsigned int err_mask;

		err_mask = FUNC2(dev, &sense_key);
		if (err_mask != 0 && err_mask != AC_ERR_DEV) {
			FUNC0(dev, KERN_WARNING, "TEST_UNIT_READY "
				"failed (err_mask=0x%x)\n", err_mask);
			return -EIO;
		}

		if (!err_mask || sense_key != UNIT_ATTENTION)
			return 0;

		err_mask = FUNC1(dev, sense_buffer, sense_key);
		if (err_mask) {
			FUNC0(dev, KERN_WARNING, "failed to clear "
				"UNIT ATTENTION (err_mask=0x%x)\n", err_mask);
			return -EIO;
		}
	}

	FUNC0(dev, KERN_WARNING,
		"UNIT ATTENTION persists after %d tries\n", ATA_EH_UA_TRIES);

	return 0;
}