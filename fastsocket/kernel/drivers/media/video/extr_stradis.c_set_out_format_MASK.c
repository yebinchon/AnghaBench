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
struct saa7146 {int* boardcfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBM_MP2_DISP_DLY ; 
 int /*<<< orphan*/  IBM_MP2_DISP_MODE ; 
 int NTSCFirstActive ; 
 scalar_t__ NewCard ; 
 int PALFirstActive ; 
 int /*<<< orphan*/  SAA7146_NUM_LINE_BYTE1 ; 
 int VIDEO_MODE_NTSC ; 
 int VIDEO_MODE_PAL ; 
 int /*<<< orphan*/  XILINX_CTL0 ; 
 int /*<<< orphan*/  debNormal ; 
 int /*<<< orphan*/  FUNC0 (struct saa7146*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct saa7146*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct saa7146 *saa, int mode)
{
	FUNC1(saa, (mode == VIDEO_MODE_NTSC ? 0 : 1));
	saa->boardcfg[2] = mode;
	/* do not adjust analog video parameters here, use saa7121 init */
	/* you will affect the SDI output on the new card */
	if (mode == VIDEO_MODE_PAL) {	/* PAL */
		FUNC0(saa, debNormal, XILINX_CTL0, 0x0808, 2);
		FUNC2(50);
		FUNC3(0x012002c0, SAA7146_NUM_LINE_BYTE1);
		if (NewCard) {
			FUNC0(saa, debNormal, IBM_MP2_DISP_MODE, 0xe100, 2);
			FUNC2(50);
		}
		FUNC0(saa, debNormal, IBM_MP2_DISP_MODE,
			  NewCard ? 0xe500 : 0x6500, 2);
		FUNC0(saa, debNormal, IBM_MP2_DISP_DLY,
			  (1 << 8) |
			  (NewCard ? PALFirstActive : PALFirstActive - 6), 2);
	} else {		/* NTSC */
		FUNC0(saa, debNormal, XILINX_CTL0, 0x0800, 2);
		FUNC2(50);
		FUNC3(0x00f002c0, SAA7146_NUM_LINE_BYTE1);
		FUNC0(saa, debNormal, IBM_MP2_DISP_MODE,
			  NewCard ? 0xe100 : 0x6100, 2);
		FUNC0(saa, debNormal, IBM_MP2_DISP_DLY,
			  (1 << 8) |
			  (NewCard ? NTSCFirstActive : NTSCFirstActive - 6), 2);
	}
}