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
typedef  int u8 ;
typedef  int /*<<< orphan*/  ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_STCFG2 ; 
 int /*<<< orphan*/  MEM_STTIME2 ; 
 int /*<<< orphan*/  PIO0 ; 
 int /*<<< orphan*/  PIO1 ; 
 int /*<<< orphan*/  PIO2 ; 
 int /*<<< orphan*/  PIO3 ; 
 int /*<<< orphan*/  PIO4 ; 
 int SBC_IDE_PIO0_TCSOE ; 
 int SBC_IDE_PIO0_TOECS ; 
 int SBC_IDE_PIO1_TCSOE ; 
 int SBC_IDE_PIO1_TOECS ; 
 int SBC_IDE_PIO2_TCSOE ; 
 int SBC_IDE_PIO2_TOECS ; 
 int SBC_IDE_PIO3_TCSOE ; 
 int SBC_IDE_PIO3_TOECS ; 
 int SBC_IDE_PIO4_TCSOE ; 
 int SBC_IDE_PIO4_TOECS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int TCSOE_MASK ; 
 int TOECS_MASK ; 
 int TS_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(ide_drive_t *drive, const u8 pio)
{
	int mem_sttime = 0, mem_stcfg = FUNC1(MEM_STCFG2);

	/* set pio mode! */
	switch(pio) {
	case 0:
		mem_sttime = FUNC0(PIO0);

		/* set configuration for RCS2# */
		mem_stcfg |= TS_MASK;
		mem_stcfg &= ~TCSOE_MASK;
		mem_stcfg &= ~TOECS_MASK;
		mem_stcfg |= SBC_IDE_PIO0_TCSOE | SBC_IDE_PIO0_TOECS;
		break;

	case 1:
		mem_sttime = FUNC0(PIO1);

		/* set configuration for RCS2# */
		mem_stcfg |= TS_MASK;
		mem_stcfg &= ~TCSOE_MASK;
		mem_stcfg &= ~TOECS_MASK;
		mem_stcfg |= SBC_IDE_PIO1_TCSOE | SBC_IDE_PIO1_TOECS;
		break;

	case 2:
		mem_sttime = FUNC0(PIO2);

		/* set configuration for RCS2# */
		mem_stcfg &= ~TS_MASK;
		mem_stcfg &= ~TCSOE_MASK;
		mem_stcfg &= ~TOECS_MASK;
		mem_stcfg |= SBC_IDE_PIO2_TCSOE | SBC_IDE_PIO2_TOECS;
		break;

	case 3:
		mem_sttime = FUNC0(PIO3);

		/* set configuration for RCS2# */
		mem_stcfg &= ~TS_MASK;
		mem_stcfg &= ~TCSOE_MASK;
		mem_stcfg &= ~TOECS_MASK;
		mem_stcfg |= SBC_IDE_PIO3_TCSOE | SBC_IDE_PIO3_TOECS;

		break;

	case 4:
		mem_sttime = FUNC0(PIO4);

		/* set configuration for RCS2# */
		mem_stcfg &= ~TS_MASK;
		mem_stcfg &= ~TCSOE_MASK;
		mem_stcfg &= ~TOECS_MASK;
		mem_stcfg |= SBC_IDE_PIO4_TCSOE | SBC_IDE_PIO4_TOECS;
		break;
	}

	FUNC2(mem_sttime,MEM_STTIME2);
	FUNC2(mem_stcfg,MEM_STCFG2);
}