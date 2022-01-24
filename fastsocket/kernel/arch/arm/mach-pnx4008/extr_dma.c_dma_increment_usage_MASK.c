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
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 struct clk* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*,int) ; 
 int /*<<< orphan*/  dma_channels_requested ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 

__attribute__((used)) static inline void FUNC5(void)
{
	if (!dma_channels_requested++) {
		struct clk *clk = FUNC1(0, "dma_ck");
		if (!FUNC0(clk)) {
			FUNC3(clk, 1);
			FUNC2(clk);
		}
		FUNC4(-1, -1, 1);
	}
}