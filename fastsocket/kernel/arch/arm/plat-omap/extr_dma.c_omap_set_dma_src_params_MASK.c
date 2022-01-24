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
typedef  int u32 ;
typedef  int u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 

void FUNC11(int lch, int src_port, int src_amode,
			     unsigned long src_start,
			     int src_ei, int src_fi)
{
	u32 l;

	if (FUNC7()) {
		u16 w;

		w = FUNC9(FUNC1(lch));
		w &= ~(0x1f << 2);
		w |= src_port << 2;
		FUNC10(w, FUNC1(lch));
	}

	l = FUNC9(FUNC0(lch));
	l &= ~(0x03 << 12);
	l |= src_amode << 12;
	FUNC10(l, FUNC0(lch));

	if (FUNC7()) {
		FUNC10(src_start >> 16, FUNC6(lch));
		FUNC10((u16)src_start, FUNC5(lch));
	}

	if (FUNC8())
		FUNC10(src_start, FUNC4(lch));

	FUNC10(src_ei, FUNC2(lch));
	FUNC10(src_fi, FUNC3(lch));
}