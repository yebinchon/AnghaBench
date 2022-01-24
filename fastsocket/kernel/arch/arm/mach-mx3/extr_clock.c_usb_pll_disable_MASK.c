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
typedef  int /*<<< orphan*/  u32 ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MXC_CCM_CCMR ; 
 int /*<<< orphan*/  MXC_CCM_CCMR_UPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct clk *clk)
{
	u32 reg;

	reg = FUNC0(MXC_CCM_CCMR);
	reg &= ~MXC_CCM_CCMR_UPE;
	FUNC1(reg, MXC_CCM_CCMR);
}