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
 int /*<<< orphan*/  IRQENABLE_L0 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  dma_chan_lock ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC5(int lch)
{
	u32 val;
	unsigned long flags;

	if (!FUNC0())
		return;

	FUNC3(&dma_chan_lock, flags);
	val = FUNC1(IRQENABLE_L0);
	val |= 1 << lch;
	FUNC2(val, IRQENABLE_L0);
	FUNC4(&dma_chan_lock, flags);
}