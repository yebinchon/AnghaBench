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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static long FUNC3(u32 dma_base)
{
	u32  pri_dma_base = dma_base, sec_dma_base = dma_base + 0x08;
	u8   cnt0, cnt1, cnt2, cnt3;
	long count = 0, last;
	int  retry = 3;

	do {
		last = count;

		/* Read the current count */
		FUNC2(0x20, pri_dma_base + 0x01);
		cnt0 = FUNC1(pri_dma_base + 0x03);
		FUNC2(0x21, pri_dma_base + 0x01);
		cnt1 = FUNC1(pri_dma_base + 0x03);
		FUNC2(0x20, sec_dma_base + 0x01);
		cnt2 = FUNC1(sec_dma_base + 0x03);
		FUNC2(0x21, sec_dma_base + 0x01);
		cnt3 = FUNC1(sec_dma_base + 0x03);

		count = (cnt3 << 23) | (cnt2 << 15) | (cnt1 << 8) | cnt0;

		/*
		 * The 30-bit decrementing counter is read in 4 pieces.
		 * Incorrect value may be read when the most significant bytes
		 * are changing...
		 */
	} while (retry-- && (((last ^ count) & 0x3fff8000) || last < count));

	FUNC0("cnt0[%02X] cnt1[%02X] cnt2[%02X] cnt3[%02X]\n",
		  cnt0, cnt1, cnt2, cnt3);

	return count;
}