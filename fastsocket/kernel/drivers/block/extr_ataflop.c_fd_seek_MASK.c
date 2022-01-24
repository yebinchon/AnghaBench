#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int track; int steprate; } ;
struct TYPE_5__ {int stretch; } ;
struct TYPE_4__ {scalar_t__ fdc_speed; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FDCCMD_SEEK ; 
 int /*<<< orphan*/  FDCREG_CMD ; 
 int /*<<< orphan*/  FDCREG_DATA ; 
 int /*<<< orphan*/  FDCSPEED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int MotorOn ; 
 int ReqTrack ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 TYPE_3__ SUD ; 
 TYPE_2__* SUDT ; 
 TYPE_1__ dma_wd ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9( void )
{
	if (SUD.track == ReqTrack << SUDT->stretch) {
		FUNC5( 0 );
		return;
	}

	if (FUNC0(FDCSPEED)) {
		dma_wd.fdc_speed = 0;	/* always seek witch 8 Mhz */
		FUNC3();
	}

	FUNC1(("fd_seek() to track %d\n",ReqTrack));
	FUNC2( FDCREG_DATA, ReqTrack << SUDT->stretch);
	FUNC8(25);
	FUNC4( fd_seek_done );
	FUNC2( FDCREG_CMD, FDCCMD_SEEK | SUD.steprate );

	MotorOn = 1;
	FUNC6();
	FUNC7();
	/* wait for IRQ */
}