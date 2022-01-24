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
 int VPIF_CH3_CLK_EN ; 
 int /*<<< orphan*/  VPIF_CH3_CTRL ; 
 int VPIF_CH3_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(int enable)
{
	if (enable) {
		FUNC1((FUNC0(VPIF_CH3_CTRL) | (VPIF_CH3_CLK_EN)), VPIF_CH3_CTRL);
		FUNC1((FUNC0(VPIF_CH3_CTRL) | (VPIF_CH3_EN)), VPIF_CH3_CTRL);
	} else {
		FUNC1((FUNC0(VPIF_CH3_CTRL) & (~VPIF_CH3_CLK_EN)), VPIF_CH3_CTRL);
		FUNC1((FUNC0(VPIF_CH3_CTRL) & (~VPIF_CH3_EN)), VPIF_CH3_CTRL);
	}
}