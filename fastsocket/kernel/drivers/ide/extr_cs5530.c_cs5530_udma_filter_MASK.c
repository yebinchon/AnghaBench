#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct TYPE_7__ {scalar_t__ ultra_mask; } ;
typedef  TYPE_1__ ide_hwif_t ;
struct TYPE_8__ {int* id; TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;

/* Variables and functions */
 size_t ATA_ID_FIELD_VALID ; 
 size_t ATA_ID_MWDMA_MODES ; 
 size_t ATA_ID_UDMA_MODES ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int*) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static u8 FUNC3(ide_drive_t *drive)
{
	ide_hwif_t *hwif = drive->hwif;
	ide_drive_t *mate = FUNC2(drive);
	u16 *mateid;
	u8 mask = hwif->ultra_mask;

	if (mate == NULL)
		goto out;
	mateid = mate->id;

	if (FUNC1(mateid) && FUNC0(mate) == 0) {
		if ((mateid[ATA_ID_FIELD_VALID] & 4) &&
		    (mateid[ATA_ID_UDMA_MODES] & 7))
			goto out;
		if (mateid[ATA_ID_MWDMA_MODES] & 7)
			mask = 0;
	}
out:
	return mask;
}