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
struct TYPE_4__ {int spt; } ;
struct TYPE_3__ {int dma_lo; int dma_md; int dma_hi; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  EXTD_DMA ; 
 int /*<<< orphan*/  FDCCMD_FORCI ; 
 int /*<<< orphan*/  FDCREG_CMD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ MultReadInProgress ; 
 int PhysTrackBuffer ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* SUDT ; 
 TYPE_1__ dma_wd ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  readtrack_timer ; 
 int st_dma_ext_dmahi ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10( unsigned long dummy )
{
	unsigned long flags, addr, addr2;

	FUNC7(flags);

	if (!MultReadInProgress) {
		/* This prevents a race condition that could arise if the
		 * interrupt is triggered while the calling of this timer
		 * callback function takes place. The IRQ function then has
		 * already cleared 'MultReadInProgress'  when flow of control
		 * gets here.
		 */
		FUNC6(flags);
		return;
	}

	/* get the current DMA address */
	/* ++ f.a. read twice to avoid being fooled by switcher */
	addr = 0;
	do {
		addr2 = addr;
		addr = dma_wd.dma_lo & 0xff;
		FUNC3();
		addr |= (dma_wd.dma_md & 0xff) << 8;
		FUNC3();
		if (FUNC0( EXTD_DMA ))
			addr |= (st_dma_ext_dmahi & 0xffff) << 16;
		else
			addr |= (dma_wd.dma_hi & 0xff) << 16;
		FUNC3();
	} while(addr != addr2);
  
	if (addr >= PhysTrackBuffer + SUDT->spt*512) {
		/* already read enough data, force an FDC interrupt to stop
		 * the read operation
		 */
		FUNC4( NULL );
		MultReadInProgress = 0;
		FUNC6(flags);
		FUNC1(("fd_readtrack_check(): done\n"));
		FUNC2( FDCREG_CMD, FDCCMD_FORCI );
		FUNC9(25);

		/* No error until now -- the FDC would have interrupted
		 * otherwise!
		 */
		FUNC5(0);
	}
	else {
		/* not yet finished, wait another tenth rotation */
		FUNC6(flags);
		FUNC1(("fd_readtrack_check(): not yet finished\n"));
		FUNC8(&readtrack_timer, jiffies + HZ/5/10);
	}
}