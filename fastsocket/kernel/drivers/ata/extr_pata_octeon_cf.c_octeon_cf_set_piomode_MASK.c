#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int waitm; int pause; int wr_hld; int rd_hld; int we; int oe; scalar_t__ adr; void* ce; scalar_t__ wait; scalar_t__ page; scalar_t__ ale; scalar_t__ pages; scalar_t__ pagem; } ;
union cvmx_mio_boot_reg_timx {int /*<<< orphan*/  u64; TYPE_2__ s; } ;
struct octeon_cf_data {int base_region; scalar_t__ dma_engine; } ;
struct ata_timing {int setup; int active; int act8b; int cycle; } ;
struct ata_port {TYPE_1__* dev; } ;
struct ata_device {int /*<<< orphan*/  pio_mode; } ;
struct TYPE_3__ {struct octeon_cf_data* platform_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct ata_device*) ; 
 scalar_t__ FUNC3 (struct ata_device*,int /*<<< orphan*/ ,struct ata_timing*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 long long FUNC8 () ; 

__attribute__((used)) static void FUNC9(struct ata_port *ap, struct ata_device *dev)
{
	struct octeon_cf_data *ocd = ap->dev->platform_data;
	union cvmx_mio_boot_reg_timx reg_tim;
	int cs = ocd->base_region;
	int T;
	struct ata_timing timing;

	int use_iordy;
	int trh;
	int pause;
	/* These names are timing parameters from the ATA spec */
	int t1;
	int t2;
	int t2i;

	T = (int)(2000000000000LL / FUNC8());

	if (FUNC3(dev, dev->pio_mode, &timing, T, T))
		FUNC0();

	t1 = timing.setup;
	if (t1)
		t1--;
	t2 = timing.active;
	if (t2)
		t2--;
	t2i = timing.act8b;
	if (t2i)
		t2i--;

	trh = FUNC6(2, 20);
	if (trh)
		trh--;

	pause = timing.cycle - timing.active - timing.setup - trh;
	if (pause)
		pause--;

	FUNC7(cs);
	if (ocd->dma_engine >= 0)
		/* True IDE mode, program both chip selects.  */
		FUNC7(cs + 1);


	use_iordy = FUNC2(dev);

	reg_tim.u64 = FUNC4(FUNC1(cs));
	/* Disable page mode */
	reg_tim.s.pagem = 0;
	/* Enable dynamic timing */
	reg_tim.s.waitm = use_iordy;
	/* Pages are disabled */
	reg_tim.s.pages = 0;
	/* We don't use multiplexed address mode */
	reg_tim.s.ale = 0;
	/* Not used */
	reg_tim.s.page = 0;
	/* Time after IORDY to coninue to assert the data */
	reg_tim.s.wait = 0;
	/* Time to wait to complete the cycle. */
	reg_tim.s.pause = pause;
	/* How long to hold after a write to de-assert CE. */
	reg_tim.s.wr_hld = trh;
	/* How long to wait after a read to de-assert CE. */
	reg_tim.s.rd_hld = trh;
	/* How long write enable is asserted */
	reg_tim.s.we = t2;
	/* How long read enable is asserted */
	reg_tim.s.oe = t2;
	/* Time after CE that read/write starts */
	reg_tim.s.ce = FUNC6(2, 5);
	/* Time before CE that address is valid */
	reg_tim.s.adr = 0;

	/* Program the bootbus region timing for the data port chip select. */
	FUNC5(FUNC1(cs), reg_tim.u64);
	if (ocd->dma_engine >= 0)
		/* True IDE mode, program both chip selects.  */
		FUNC5(FUNC1(cs + 1), reg_tim.u64);
}