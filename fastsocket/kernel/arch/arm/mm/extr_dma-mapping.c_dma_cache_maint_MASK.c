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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  DMA_BIDIRECTIONAL 130 
#define  DMA_FROM_DEVICE 129 
#define  DMA_TO_DEVICE 128 
 unsigned long FUNC2 (void const*) ; 
 void FUNC3 (void const*,void const*) ; 
 void FUNC4 (void const*,void const*) ; 
 void FUNC5 (void const*,void const*) ; 
 void FUNC6 (unsigned long,unsigned long) ; 
 void FUNC7 (unsigned long,unsigned long) ; 
 void FUNC8 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (void const*) ; 

void FUNC10(const void *start, size_t size, int direction)
{
	void (*inner_op)(const void *, const void *);
	void (*outer_op)(unsigned long, unsigned long);

	FUNC1(!FUNC9(start) || !FUNC9(start + size - 1));

	switch (direction) {
	case DMA_FROM_DEVICE:		/* invalidate only */
		inner_op = dmac_inv_range;
		outer_op = outer_inv_range;
		break;
	case DMA_TO_DEVICE:		/* writeback only */
		inner_op = dmac_clean_range;
		outer_op = outer_clean_range;
		break;
	case DMA_BIDIRECTIONAL:		/* writeback and invalidate */
		inner_op = dmac_flush_range;
		outer_op = outer_flush_range;
		break;
	default:
		FUNC0();
	}

	inner_op(start, start + size);
	outer_op(FUNC2(start), FUNC2(start) + size);
}