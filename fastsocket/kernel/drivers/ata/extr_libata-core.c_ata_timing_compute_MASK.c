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
struct ata_timing {int cycle; int cyc8b; scalar_t__ act8b; scalar_t__ rec8b; scalar_t__ active; scalar_t__ recover; } ;
struct ata_device {int* id; unsigned short pio_mode; } ;
typedef  int /*<<< orphan*/  p ;

/* Variables and functions */
 size_t ATA_ID_EIDE_DMA_MIN ; 
 size_t ATA_ID_EIDE_PIO ; 
 size_t ATA_ID_EIDE_PIO_IORDY ; 
 size_t ATA_ID_FIELD_VALID ; 
 int ATA_TIMING_ALL ; 
 int ATA_TIMING_CYC8B ; 
 int ATA_TIMING_CYCLE ; 
 int EINVAL ; 
 unsigned short XFER_MW_DMA_0 ; 
 unsigned short XFER_MW_DMA_2 ; 
 unsigned short XFER_PIO_0 ; 
 unsigned short XFER_PIO_2 ; 
 unsigned short XFER_PIO_6 ; 
 unsigned short XFER_SW_DMA_0 ; 
 struct ata_timing* FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_timing*,struct ata_timing*,struct ata_timing*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_timing*,struct ata_timing*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_timing*,struct ata_timing const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ata_timing*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct ata_device *adev, unsigned short speed,
		       struct ata_timing *t, int T, int UT)
{
	const struct ata_timing *s;
	struct ata_timing p;

	/*
	 * Find the mode.
	 */

	if (!(s = FUNC0(speed)))
		return -EINVAL;

	FUNC3(t, s, sizeof(*s));

	/*
	 * If the drive is an EIDE drive, it can tell us it needs extended
	 * PIO/MW_DMA cycle timing.
	 */

	if (adev->id[ATA_ID_FIELD_VALID] & 2) {	/* EIDE drive */
		FUNC4(&p, 0, sizeof(p));
		if (speed >= XFER_PIO_0 && speed <= XFER_SW_DMA_0) {
			if (speed <= XFER_PIO_2) p.cycle = p.cyc8b = adev->id[ATA_ID_EIDE_PIO];
					    else p.cycle = p.cyc8b = adev->id[ATA_ID_EIDE_PIO_IORDY];
		} else if (speed >= XFER_MW_DMA_0 && speed <= XFER_MW_DMA_2) {
			p.cycle = adev->id[ATA_ID_EIDE_DMA_MIN];
		}
		FUNC1(&p, t, t, ATA_TIMING_CYCLE | ATA_TIMING_CYC8B);
	}

	/*
	 * Convert the timing to bus clock counts.
	 */

	FUNC2(t, t, T, UT);

	/*
	 * Even in DMA/UDMA modes we still use PIO access for IDENTIFY,
	 * S.M.A.R.T * and some other commands. We have to ensure that the
	 * DMA cycle timing is slower/equal than the fastest PIO timing.
	 */

	if (speed > XFER_PIO_6) {
		FUNC5(adev, adev->pio_mode, &p, T, UT);
		FUNC1(&p, t, t, ATA_TIMING_ALL);
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

	/* In a few cases quantisation may produce enough errors to
	   leave t->cycle too low for the sum of active and recovery
	   if so we must correct this */
	if (t->active + t->recover > t->cycle)
		t->cycle = t->active + t->recover;

	return 0;
}