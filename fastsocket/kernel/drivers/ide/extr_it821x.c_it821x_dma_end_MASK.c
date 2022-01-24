#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct it821x_dev {scalar_t__* mwdma; int /*<<< orphan*/ * pio; } ;
typedef  int /*<<< orphan*/  ide_hwif_t ;
struct TYPE_5__ {int dn; int /*<<< orphan*/ * hwif; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 scalar_t__ MWDMA_OFF ; 
 int FUNC0 (TYPE_1__*) ; 
 struct it821x_dev* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(ide_drive_t *drive)
{
	ide_hwif_t *hwif = drive->hwif;
	struct it821x_dev *itdev = FUNC1(hwif);
	int ret = FUNC0(drive);
	u8 unit = drive->dn & 1;

	if(itdev->mwdma[unit] != MWDMA_OFF)
		FUNC2(drive, itdev->pio[unit]);
	return ret;
}