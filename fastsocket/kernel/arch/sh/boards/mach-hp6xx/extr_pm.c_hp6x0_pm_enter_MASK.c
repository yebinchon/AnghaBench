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
typedef  int u16 ;
typedef  int /*<<< orphan*/  suspend_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  DACR ; 
 int /*<<< orphan*/  HD64461_PCC1CSCIER ; 
 int /*<<< orphan*/  HD64461_PCC1CSCR ; 
 int /*<<< orphan*/  HD64461_PCC1SCR ; 
 int HD64461_PCCSCR_VCC1 ; 
 int /*<<< orphan*/  HD64461_SCPUCR ; 
 int /*<<< orphan*/  HD64461_STBCR ; 
 int HD64461_STBCR_SPC1ST ; 
 int /*<<< orphan*/  STBCR ; 
 int /*<<< orphan*/  STBCR2 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(suspend_state_t state)
{
	u8 stbcr, stbcr2;
#ifdef CONFIG_HD64461_ENABLER
	u8 scr;
	u16 hd64461_stbcr;
#endif

#ifdef CONFIG_HD64461_ENABLER
	outb(0, HD64461_PCC1CSCIER);

	scr = inb(HD64461_PCC1SCR);
	scr |= HD64461_PCCSCR_VCC1;
	outb(scr, HD64461_PCC1SCR);

	hd64461_stbcr = inw(HD64461_STBCR);
	hd64461_stbcr |= HD64461_STBCR_SPC1ST;
	outw(hd64461_stbcr, HD64461_STBCR);
#endif

	FUNC1(0x1f, DACR);

	stbcr = FUNC0(STBCR);
	FUNC1(0x01, STBCR);

	stbcr2 = FUNC0(STBCR2);
	FUNC1(0x7f , STBCR2);

	FUNC5(0xf07f, HD64461_SCPUCR);

	FUNC6();

	FUNC5(0, HD64461_SCPUCR);
	FUNC1(stbcr, STBCR);
	FUNC1(stbcr2, STBCR2);

#ifdef CONFIG_HD64461_ENABLER
	hd64461_stbcr = inw(HD64461_STBCR);
	hd64461_stbcr &= ~HD64461_STBCR_SPC1ST;
	outw(hd64461_stbcr, HD64461_STBCR);

	outb(0x4c, HD64461_PCC1CSCIER);
	outb(0x00, HD64461_PCC1CSCR);
#endif

	return 0;
}