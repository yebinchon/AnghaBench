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
struct device {int dummy; } ;
struct ata_timing {unsigned long cyc8b; unsigned long setup; unsigned long act8b; unsigned long rec8b; } ;
struct at91_ide_info {int /*<<< orphan*/  cs; int /*<<< orphan*/  mck; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned long) ; 
 int FUNC2 (unsigned long) ; 
 int FUNC3 (unsigned long) ; 
 int FUNC4 (unsigned long) ; 
 int FUNC5 (unsigned long) ; 
 int FUNC6 (unsigned long) ; 
 int FUNC7 (unsigned long) ; 
 int FUNC8 (unsigned long) ; 
 int FUNC9 (unsigned long) ; 
 int FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC14 (unsigned long,unsigned long) ; 
 unsigned long FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct device*,char*,unsigned long,unsigned long,...) ; 

__attribute__((used)) static void FUNC17(struct device *dev,
		struct at91_ide_info *info, const struct ata_timing *ata)
{
	unsigned long read_cycle, write_cycle, active, recover;
	unsigned long nrd_setup, nrd_pulse, nrd_recover;
	unsigned long nwe_setup, nwe_pulse;

	unsigned long ncs_write_setup, ncs_write_pulse;
	unsigned long ncs_read_setup, ncs_read_pulse;

	unsigned long mck_hz;

	read_cycle  = ata->cyc8b;
	nrd_setup   = ata->setup;
	nrd_pulse   = ata->act8b;
	nrd_recover = ata->rec8b;

	mck_hz = FUNC15(info->mck);

	read_cycle  = FUNC14(read_cycle, mck_hz);
	nrd_setup   = FUNC14(nrd_setup, mck_hz);
	nrd_pulse   = FUNC14(nrd_pulse, mck_hz);
	nrd_recover = FUNC14(nrd_recover, mck_hz);

	active  = nrd_setup + nrd_pulse;
	recover = read_cycle - active;

	/* Need at least two cycles recovery */
	if (recover < 2)
		read_cycle = active + 2;

	/* (CS0, CS1, DIR, OE) <= (CFCE1, CFCE2, CFRNW, NCSX) timings */
	ncs_read_setup = 1;
	ncs_read_pulse = read_cycle - 2;

	/* Write timings same as read timings */
	write_cycle = read_cycle;
	nwe_setup = nrd_setup;
	nwe_pulse = nrd_pulse;
	ncs_write_setup = ncs_read_setup;
	ncs_write_pulse = ncs_read_pulse;

	FUNC16(dev, "ATA timings: nrd_setup = %lu nrd_pulse = %lu nrd_cycle = %lu\n",
			nrd_setup, nrd_pulse, read_cycle);
	FUNC16(dev, "ATA timings: nwe_setup = %lu nwe_pulse = %lu nwe_cycle = %lu\n",
			nwe_setup, nwe_pulse, write_cycle);
	FUNC16(dev, "ATA timings: ncs_read_setup = %lu ncs_read_pulse = %lu\n",
			ncs_read_setup, ncs_read_pulse);
	FUNC16(dev, "ATA timings: ncs_write_setup = %lu ncs_write_pulse = %lu\n",
			ncs_write_setup, ncs_write_pulse);

	FUNC13(FUNC12(info->cs),
			FUNC10(nwe_setup) |
			FUNC7(nrd_setup) |
			FUNC4(ncs_write_setup) |
			FUNC2(ncs_read_setup));

	FUNC13(FUNC11(info->cs),
			FUNC9(nwe_pulse) |
			FUNC6(nrd_pulse) |
			FUNC3(ncs_write_pulse) |
			FUNC1(ncs_read_pulse));

	FUNC13(FUNC0(info->cs),
			FUNC8(write_cycle) |
			FUNC5(read_cycle));

	return;
}