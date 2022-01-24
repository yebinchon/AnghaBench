#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  track; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FDCCMD_SEEK ; 
 int /*<<< orphan*/  FDCREG_CMD ; 
 int /*<<< orphan*/  FDCREG_DATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MotorOn ; 
 int /*<<< orphan*/  NeedSeek ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 TYPE_1__ SUD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5( void )
{
	if (!NeedSeek) {
		FUNC3( 0 );
	}
	else {
		FUNC0(("finish_fdc: dummy seek started\n"));
		FUNC1 (FDCREG_DATA, SUD.track);
		FUNC2( finish_fdc_done );
		FUNC1 (FDCREG_CMD, FDCCMD_SEEK);
		MotorOn = 1;
		FUNC4();
		/* we must wait for the IRQ here, because the ST-DMA
		   is released immediately afterwards and the interrupt
		   may be delivered to the wrong driver. */
	  }
}