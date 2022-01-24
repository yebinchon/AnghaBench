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
 int /*<<< orphan*/  CAMDMA_CCR_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  CAMDMA_CLNK_CTRL_ENABLE_LNK ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(unsigned long base, int dmach)
{
	/* mask all interrupts from this channel */
	FUNC4(base, FUNC1(dmach), 0);
	/* unlink this channel */
	FUNC3(base, FUNC2(dmach), 0,
			      CAMDMA_CLNK_CTRL_ENABLE_LNK);
	/* disable this channel */
	FUNC3(base, FUNC0(dmach), 0, CAMDMA_CCR_ENABLE);
}