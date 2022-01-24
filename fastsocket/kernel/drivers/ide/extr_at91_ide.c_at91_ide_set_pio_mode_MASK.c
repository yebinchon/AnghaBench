#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct ide_timing {int dummy; } ;
struct TYPE_6__ {TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;
struct TYPE_5__ {scalar_t__ select_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ const XFER_PIO_0 ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__ const,struct ide_timing*,int) ; 
 scalar_t__ FUNC2 (TYPE_2__*,scalar_t__ const) ; 
 struct ide_timing* FUNC3 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,scalar_t__ const) ; 

__attribute__((used)) static void FUNC5(ide_drive_t *drive, const u8 pio)
{
	struct ide_timing *timing;
	u8 chipselect = drive->hwif->select_data;
	int use_iordy = 0;

	FUNC4("chipselect %u pio %u\n", chipselect, pio);

	timing = FUNC3(XFER_PIO_0 + pio);
	FUNC0(!timing);

	if (FUNC2(drive, pio))
		use_iordy = 1;

	FUNC1(chipselect, pio, timing, use_iordy);
}