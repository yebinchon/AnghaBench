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
 scalar_t__ ATA_DEV_ATAPI ; 
 unsigned long ATA_MASK_MWDMA ; 
 unsigned long ATA_MASK_UDMA ; 
 int ATA_SHIFT_UDMA ; 
 unsigned long FUNC0 (struct ata_device*,unsigned long) ; 
 int /*<<< orphan*/  bad_ata33 ; 
 int /*<<< orphan*/  bad_ata66_3 ; 
 int /*<<< orphan*/  bad_ata66_4 ; 
 scalar_t__ FUNC1 (struct ata_device*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC2(struct ata_device *adev, unsigned long mask)
{
	if (adev->class == ATA_DEV_ATA) {
		if (FUNC1(adev, "UDMA",  bad_ata33))
			mask &= ~ATA_MASK_UDMA;
		if (FUNC1(adev, "UDMA3", bad_ata66_3))
			mask &= ~(0xF8 << ATA_SHIFT_UDMA);
		if (FUNC1(adev, "UDMA4", bad_ata66_4))
			mask &= ~(0xF0 << ATA_SHIFT_UDMA);
	} else if (adev->class == ATA_DEV_ATAPI)
		mask &= ~(ATA_MASK_MWDMA | ATA_MASK_UDMA);

	return FUNC0(adev, mask);
}