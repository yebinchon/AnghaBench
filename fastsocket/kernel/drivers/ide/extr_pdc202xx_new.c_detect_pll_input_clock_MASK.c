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
struct timeval {int tv_sec; int tv_usec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,long,...) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*) ; 
 int FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned long) ; 
 long FUNC5 (unsigned long) ; 

__attribute__((used)) static long FUNC6(unsigned long dma_base)
{
	struct timeval start_time, end_time;
	long start_count, end_count;
	long pll_input, usec_elapsed;
	u8 scr1;

	start_count = FUNC5(dma_base);
	FUNC1(&start_time);

	/* Start the test mode */
	FUNC4(0x01, dma_base + 0x01);
	scr1 = FUNC2(dma_base + 0x03);
	FUNC0("scr1[%02X]\n", scr1);
	FUNC4(scr1 | 0x40, dma_base + 0x03);

	/* Let the counter run for 10 ms. */
	FUNC3(10);

	end_count = FUNC5(dma_base);
	FUNC1(&end_time);

	/* Stop the test mode */
	FUNC4(0x01, dma_base + 0x01);
	scr1 = FUNC2(dma_base + 0x03);
	FUNC0("scr1[%02X]\n", scr1);
	FUNC4(scr1 & ~0x40, dma_base + 0x03);

	/*
	 * Calculate the input clock in Hz
	 * (the clock counter is 30 bit wide and counts down)
	 */
	usec_elapsed = (end_time.tv_sec - start_time.tv_sec) * 1000000 +
		(end_time.tv_usec - start_time.tv_usec);
	pll_input = ((start_count - end_count) & 0x3fffffff) / 10 *
		(10000000 / usec_elapsed);

	FUNC0("start[%ld] end[%ld]\n", start_count, end_count);

	return pll_input;
}