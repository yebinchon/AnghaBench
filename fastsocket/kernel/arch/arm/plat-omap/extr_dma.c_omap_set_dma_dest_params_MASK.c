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

void FUNC11(int lch, int dest_port, int dest_amode,
			      unsigned long dest_start,
			      int dst_ei, int dst_fi)
{
	u32 l;

	if (FUNC7()) {
		l = FUNC9(FUNC6(lch));
		l &= ~(0x1f << 9);
		l |= dest_port << 9;
		FUNC10(l, FUNC6(lch));
	}

	l = FUNC9(FUNC0(lch));
	l &= ~(0x03 << 14);
	l |= dest_amode << 14;
	FUNC10(l, FUNC0(lch));

	if (FUNC7()) {
		FUNC10(dest_start >> 16, FUNC5(lch));
		FUNC10(dest_start, FUNC4(lch));
	}

	if (FUNC8())
		FUNC10(dest_start, FUNC3(lch));

	FUNC10(dst_ei, FUNC1(lch));
	FUNC10(dst_fi, FUNC2(lch));
}