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
struct ata_device {scalar_t__ class; } ;

/* Variables and functions */
 scalar_t__ ATA_DEV_ATA ; 
 unsigned long ATA_MASK_UDMA ; 
 int ATA_SHIFT_UDMA ; 
 unsigned long FUNC0 (struct ata_device*,unsigned long) ; 
 int /*<<< orphan*/  bad_ata100_5 ; 
 int /*<<< orphan*/  bad_ata33 ; 
 scalar_t__ FUNC1 (struct ata_device*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC2(struct ata_device *adev, unsigned long mask)
{
	if (adev->class == ATA_DEV_ATA) {
		if (FUNC1(adev, "UDMA", bad_ata33))
			mask &= ~ATA_MASK_UDMA;
		if (FUNC1(adev, "UDMA100", bad_ata100_5))
			mask &= ~(0xE0 << ATA_SHIFT_UDMA);
	}
	return FUNC0(adev, mask);
}