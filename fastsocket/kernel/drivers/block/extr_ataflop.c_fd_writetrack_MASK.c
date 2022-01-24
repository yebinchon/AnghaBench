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
struct TYPE_4__ {int stretch; } ;
struct TYPE_3__ {unsigned char dma_lo; unsigned char dma_md; unsigned char dma_hi; int dma_mode_status; int fdc_acces_seccount; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  EXTD_DMA ; 
 int FDCCMD_WRTRA ; 
 int /*<<< orphan*/  FDCREG_TRACK ; 
 int FDCSELREG_STP ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int MotorOn ; 
 unsigned long PhysTrackBuffer ; 
 int /*<<< orphan*/  ReqSide ; 
 int /*<<< orphan*/  ReqTrack ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__* SUDT ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,int,int) ; 
 TYPE_1__ dma_wd ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fd_writetrack_done ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 unsigned short st_dma_ext_dmahi ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static void FUNC13( void )
{
	unsigned long paddr, flags;
	unsigned int track;
	
	FUNC1(("fd_writetrack() Tr=%d Si=%d\n", ReqTrack, ReqSide ));

	paddr = PhysTrackBuffer;
	FUNC6( paddr, BUFFER_SIZE, 1 );

	FUNC7( ReqSide );
  
	/* Cheat for track if stretch != 0 */
	if (SUDT->stretch) {
		track = FUNC2( FDCREG_TRACK);
		FUNC4();
		FUNC3(FDCREG_TRACK,track >> SUDT->stretch);
	}
	FUNC12(40);
  
	/* Setup DMA */
	FUNC10(flags);
	dma_wd.dma_lo = (unsigned char)paddr;
	FUNC4();
	paddr >>= 8;
	dma_wd.dma_md = (unsigned char)paddr;
	FUNC4();
	paddr >>= 8;
	if (FUNC0( EXTD_DMA ))
		st_dma_ext_dmahi = (unsigned short)paddr;
	else
		dma_wd.dma_hi = (unsigned char)paddr;
	FUNC4();
	FUNC9(flags);
  
	/* Clear FIFO and switch DMA to correct mode */  
	dma_wd.dma_mode_status = 0x190;  
	FUNC4();
	dma_wd.dma_mode_status = 0x90;  
	FUNC4();
	dma_wd.dma_mode_status = 0x190;
	FUNC4();
  
	/* How many sectors for DMA */
	dma_wd.fdc_acces_seccount = BUFFER_SIZE/512;
	FUNC12(40);  
  
	/* Start operation */
	dma_wd.dma_mode_status = FDCSELREG_STP | 0x100;
	FUNC12(40);
	FUNC5( fd_writetrack_done );
	dma_wd.fdc_acces_seccount = FDCCMD_WRTRA | FUNC8(); 

	MotorOn = 1;
	FUNC11();
	/* wait for interrupt */
}