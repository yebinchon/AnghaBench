#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct ide_timing {int cycle; int cyc8b; scalar_t__ act8b; scalar_t__ rec8b; scalar_t__ active; scalar_t__ recover; } ;
typedef  int /*<<< orphan*/  p ;
struct TYPE_4__ {int* id; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 size_t ATA_ID_EIDE_DMA_MIN ; 
 size_t ATA_ID_EIDE_PIO ; 
 size_t ATA_ID_EIDE_PIO_IORDY ; 
 size_t ATA_ID_FIELD_VALID ; 
 int EINVAL ; 
 int IDE_TIMING_ALL ; 
 int IDE_TIMING_CYC8B ; 
 int IDE_TIMING_CYCLE ; 
 scalar_t__ XFER_MW_DMA_0 ; 
 scalar_t__ XFER_MW_DMA_2 ; 
 scalar_t__ XFER_PIO_0 ; 
 scalar_t__ XFER_PIO_2 ; 
 scalar_t__ XFER_PIO_4 ; 
 scalar_t__ XFER_PIO_5 ; 
 scalar_t__ XFER_SW_DMA_0 ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int,int) ; 
 struct ide_timing* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ide_timing*,struct ide_timing*,struct ide_timing*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ide_timing*,struct ide_timing*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ide_timing*,int /*<<< orphan*/ ,int) ; 

int FUNC6(ide_drive_t *drive, u8 speed,
		       struct ide_timing *t, int T, int UT)
{
	u16 *id = drive->id;
	struct ide_timing *s, p;

	/*
	 * Find the mode.
	 */
	s = FUNC2(speed);
	if (s == NULL)
		return -EINVAL;

	/*
	 * Copy the timing from the table.
	 */
	*t = *s;

	/*
	 * If the drive is an EIDE drive, it can tell us it needs extended
	 * PIO/MWDMA cycle timing.
	 */
	if (id[ATA_ID_FIELD_VALID] & 2) {	/* EIDE drive */
		FUNC5(&p, 0, sizeof(p));

		if (speed <= XFER_PIO_2)
			p.cycle = p.cyc8b = id[ATA_ID_EIDE_PIO];
		else if ((speed <= XFER_PIO_4) ||
			 (speed == XFER_PIO_5 && !FUNC0(id)))
			p.cycle = p.cyc8b = id[ATA_ID_EIDE_PIO_IORDY];
		else if (speed >= XFER_MW_DMA_0 && speed <= XFER_MW_DMA_2)
			p.cycle = id[ATA_ID_EIDE_DMA_MIN];

		FUNC3(&p, t, t, IDE_TIMING_CYCLE | IDE_TIMING_CYC8B);
	}

	/*
	 * Convert the timing to bus clock counts.
	 */
	FUNC4(t, t, T, UT);

	/*
	 * Even in DMA/UDMA modes we still use PIO access for IDENTIFY,
	 * S.M.A.R.T and some other commands. We have to ensure that the
	 * DMA cycle timing is slower/equal than the fastest PIO timing.
	 */
	if (speed >= XFER_SW_DMA_0) {
		u8 pio = FUNC1(drive, 255, 5);
		FUNC6(drive, XFER_PIO_0 + pio, &p, T, UT);
		FUNC3(&p, t, t, IDE_TIMING_ALL);
	}

	/*
	 * Lengthen active & recovery time so that cycle time is correct.
	 */
	if (t->act8b + t->rec8b < t->cyc8b) {
		t->act8b += (t->cyc8b - (t->act8b + t->rec8b)) / 2;
		t->rec8b = t->cyc8b - t->act8b;
	}

	if (t->active + t->recover < t->cycle) {
		t->active += (t->cycle - (t->active + t->recover)) / 2;
		t->recover = t->cycle - t->active;
	}

	return 0;
}