#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_9__ {scalar_t__ kind; int /*<<< orphan*/ * timings; } ;
typedef  TYPE_2__ pmac_ide_hwif_t ;
struct TYPE_8__ {int /*<<< orphan*/  parent; } ;
struct TYPE_10__ {TYPE_1__ gendev; } ;
typedef  TYPE_3__ ide_hwif_t ;
struct TYPE_11__ {int dn; TYPE_3__* hwif; } ;
typedef  TYPE_4__ ide_drive_t ;

/* Variables and functions */
 size_t const XFER_UDMA_0 ; 
 scalar_t__ controller_k2_ata6 ; 
 scalar_t__ controller_kl_ata4 ; 
 scalar_t__ controller_sh_ata6 ; 
 scalar_t__ controller_un_ata6 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t const) ; 
 int FUNC3 (int /*<<< orphan*/ *,size_t const) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t const) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t const) ; 

__attribute__((used)) static void FUNC6(ide_drive_t *drive, const u8 speed)
{
	ide_hwif_t *hwif = drive->hwif;
	pmac_ide_hwif_t *pmif =
		(pmac_ide_hwif_t *)FUNC0(hwif->gendev.parent);
	int ret = 0;
	u32 *timings, *timings2, tl[2];
	u8 unit = drive->dn & 1;

	timings = &pmif->timings[unit];
	timings2 = &pmif->timings[unit+2];

	/* Copy timings to local image */
	tl[0] = *timings;
	tl[1] = *timings2;

	if (speed >= XFER_UDMA_0) {
		if (pmif->kind == controller_kl_ata4)
			ret = FUNC3(&tl[0], speed);
		else if (pmif->kind == controller_un_ata6
			 || pmif->kind == controller_k2_ata6)
			ret = FUNC4(&tl[0], &tl[1], speed);
		else if (pmif->kind == controller_sh_ata6)
			ret = FUNC5(&tl[0], &tl[1], speed);
		else
			ret = -1;
	} else
		FUNC2(drive, pmif->kind, &tl[0], &tl[1], speed);

	if (ret)
		return;

	/* Apply timings to controller */
	*timings = tl[0];
	*timings2 = tl[1];

	FUNC1(drive);	
}