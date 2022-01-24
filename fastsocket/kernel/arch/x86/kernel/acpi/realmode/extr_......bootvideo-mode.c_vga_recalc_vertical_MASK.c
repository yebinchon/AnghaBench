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
 int force_y ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(void)
{
	unsigned int font_size, rows;
	u16 crtc;
	u8 pt, ov;

	FUNC3(0);
	font_size = FUNC2(0x485); /* BIOS: font size (pixels) */
	rows = force_y ? force_y : FUNC2(0x484)+1; /* Text rows */

	rows *= font_size;	/* Visible scan lines */
	rows--;			/* ... minus one */

	crtc = FUNC4();

	pt = FUNC0(crtc, 0x11);
	pt &= ~0x80;		/* Unlock CR0-7 */
	FUNC1(pt, crtc, 0x11);

	FUNC1((u8)rows, crtc, 0x12); /* Lower height register */

	ov = FUNC0(crtc, 0x07); /* Overflow register */
	ov &= 0xbd;
	ov |= (rows >> (8-1)) & 0x02;
	ov |= (rows >> (9-6)) & 0x40;
	FUNC1(ov, crtc, 0x07);
}