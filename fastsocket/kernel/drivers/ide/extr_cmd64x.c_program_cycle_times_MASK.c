#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_5__ {size_t dn; TYPE_1__* hwif; } ;
typedef  TYPE_2__ ide_drive_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  DRWTIM0 131 
#define  DRWTIM1 130 
#define  DRWTIM2 129 
#define  DRWTIM3 128 
 int /*<<< orphan*/  FUNC0 (char*,int,int const,...) ; 
 int ide_pci_clk ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int const,int) ; 
 int FUNC2 (int,int) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4 (ide_drive_t *drive, int cycle_time, int active_time)
{
	struct pci_dev *dev = FUNC3(drive->hwif->dev);
	int clock_time = 1000 / (ide_pci_clk ? ide_pci_clk : 33);
	u8  cycle_count, active_count, recovery_count, drwtim;
	static const u8 recovery_values[] =
		{15, 15, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 0};
	static const u8 drwtim_regs[4] = {DRWTIM0, DRWTIM1, DRWTIM2, DRWTIM3};

	FUNC0("program_cycle_times parameters: total=%d, active=%d\n",
		  cycle_time, active_time);

	cycle_count	= FUNC2( cycle_time, clock_time);
	active_count	= FUNC2(active_time, clock_time);
	recovery_count	= cycle_count - active_count;

	/*
	 * In case we've got too long recovery phase, try to lengthen
	 * the active phase
	 */
	if (recovery_count > 16) {
		active_count += recovery_count - 16;
		recovery_count = 16;
	}
	if (active_count > 16)		/* shouldn't actually happen... */
	 	active_count = 16;

	FUNC0("Final counts: total=%d, active=%d, recovery=%d\n",
		  cycle_count, active_count, recovery_count);

	/*
	 * Convert values to internal chipset representation
	 */
	recovery_count = recovery_values[recovery_count];
 	active_count  &= 0x0f;

	/* Program the active/recovery counts into the DRWTIM register */
	drwtim = (active_count << 4) | recovery_count;
	(void) FUNC1(dev, drwtim_regs[drive->dn], drwtim);
	FUNC0("Write 0x%02x to reg 0x%x\n", drwtim, drwtim_regs[drive->dn]);
}