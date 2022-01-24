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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CAMDMA_CCR_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int CAMDMA_CLNK_CTRL_ENABLE_LNK ; 
 int NUM_CAMDMA_CHANNELS ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int) ; 
 int FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(unsigned long base, int dmach,
					     int free_dmach)
{
	int prev_dmach, ch;

	if (dmach == 0)
		prev_dmach = NUM_CAMDMA_CHANNELS - 1;
	else
		prev_dmach = dmach - 1;
	FUNC4(base, FUNC1(prev_dmach),
			    CAMDMA_CLNK_CTRL_ENABLE_LNK | dmach);
	/* Did we chain the DMA transfer before the previous one
	 * finished?
	 */
	ch = (dmach + free_dmach) % NUM_CAMDMA_CHANNELS;
	while (!(FUNC3(base, FUNC0(ch))
		 & CAMDMA_CCR_ENABLE)) {
		if (ch == dmach) {
			/* The previous transfer has ended and this one
			 * hasn't started, so we must not have chained
			 * to the previous one in time.  We'll have to
			 * start it now.
			 */
			FUNC2(base, dmach);
			break;
		} else
			ch = (ch + 1) % NUM_CAMDMA_CHANNELS;
	}
}