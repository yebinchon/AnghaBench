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
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int GFP_ATOMIC ; 
 int GFP_DMA ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

__attribute__((used)) static void *FUNC5(size_t size, dma_addr_t * dma_handle)
{
	void *ret;
	int gfp = GFP_ATOMIC | GFP_DMA;

	ret = (void *) FUNC1(gfp, FUNC2(size));

	if (ret != NULL) {
		FUNC3(ret, 0, size);
		*dma_handle = FUNC4(ret);
		ret = (void *)FUNC0(ret);
	}
	return ret;
}