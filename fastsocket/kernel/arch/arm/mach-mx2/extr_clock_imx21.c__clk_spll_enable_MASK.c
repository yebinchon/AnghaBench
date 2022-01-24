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
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCM_CSCR ; 
 int CCM_CSCR_SPEN ; 
 int /*<<< orphan*/  CCM_SPCTL1 ; 
 int CCM_SPCTL1_LF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct clk *clk)
{
	u32 reg;

	reg = FUNC0(CCM_CSCR);
	reg |= CCM_CSCR_SPEN;
	FUNC1(reg, CCM_CSCR);

	while ((FUNC0(CCM_SPCTL1) & CCM_SPCTL1_LF) == 0)
		;
	return 0;
}