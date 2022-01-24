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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void)
{
	u16 crtc;		/* CRTC base address */
	u8  csel;		/* CRTC miscellaneous output register */

	crtc = FUNC3();

	FUNC1(0x0c, crtc, 0x11); /* Vertical sync end, unlock CR0-7 */
	FUNC1(0x0b, crtc, 0x06); /* Vertical total */
	FUNC1(0x3e, crtc, 0x07); /* Vertical overflow */
	FUNC1(0xea, crtc, 0x10); /* Vertical sync start */
	FUNC1(0xdf, crtc, 0x12); /* Vertical display end */
	FUNC1(0xe7, crtc, 0x15); /* Vertical blank start */
	FUNC1(0x04, crtc, 0x16); /* Vertical blank end */
	csel = FUNC0(0x3cc);
	csel &= 0x0d;
	csel |= 0xe2;
	FUNC2(csel, 0x3c2);
}