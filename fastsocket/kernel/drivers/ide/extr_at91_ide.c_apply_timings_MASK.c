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
struct ide_timing {unsigned int cyc8b; unsigned int setup; unsigned int act8b; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 struct clk* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 unsigned int FUNC4 (struct clk*) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC6 (int const,unsigned int,unsigned int,unsigned int,unsigned int,int) ; 

__attribute__((used)) static void FUNC7(const u8 chipselect, const u8 pio,
			  const struct ide_timing *timing, int use_iordy)
{
	unsigned int t0, t1, t2, t6z;
	unsigned int cycle, setup, pulse, data_float;
	unsigned int mck_hz;
	struct clk *mck;

	/* see table 22 of Compact Flash standard 4.1 for the meaning,
	 * we do not stretch active (t2) time, so setup (t1) + hold time (th)
	 * assure at least minimal recovery (t2i) time */
	t0 = timing->cyc8b;
	t1 = timing->setup;
	t2 = timing->act8b;
	t6z = (pio < 5) ? 30 : 20;

	FUNC5("t0=%u t1=%u t2=%u t6z=%u\n", t0, t1, t2, t6z);

	mck = FUNC3(NULL, "mck");
	FUNC0(FUNC1(mck));
	mck_hz = FUNC4(mck);
	FUNC5("mck_hz=%u\n", mck_hz);

	cycle = FUNC2(t0, mck_hz);
	setup = FUNC2(t1, mck_hz);
	pulse = FUNC2(t2, mck_hz);
	data_float = FUNC2(t6z, mck_hz);

	FUNC5("cycle=%u setup=%u pulse=%u data_float=%u\n",
	     cycle, setup, pulse, data_float);

	FUNC6(chipselect, cycle, setup, pulse, data_float, use_iordy);
}