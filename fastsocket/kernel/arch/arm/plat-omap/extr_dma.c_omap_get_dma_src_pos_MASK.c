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
typedef  int dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

dma_addr_t FUNC6(int lch)
{
	dma_addr_t offset = 0;

	if (FUNC4())
		offset = FUNC5(FUNC0(lch));
	else
		offset = FUNC5(FUNC1(lch));

	/*
	 * omap 3.2/3.3 erratum: sometimes 0 is returned if CSAC/CDAC is
	 * read before the DMA controller finished disabling the channel.
	 */
	if (!FUNC4() && offset == 0)
		offset = FUNC5(FUNC1(lch));

	if (FUNC3())
		offset |= (FUNC5(FUNC2(lch)) << 16);

	return offset;
}