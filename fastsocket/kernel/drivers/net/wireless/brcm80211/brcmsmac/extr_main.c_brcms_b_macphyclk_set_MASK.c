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
struct brcms_hardware {int dummy; } ;

/* Variables and functions */
 int ON ; 
 int /*<<< orphan*/  SICF_MPCLKE ; 
 int /*<<< orphan*/  FUNC0 (struct brcms_hardware*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct brcms_hardware *wlc_hw, bool clk)
{
	if (ON == clk)
		FUNC0(wlc_hw, SICF_MPCLKE, SICF_MPCLKE);
	else
		FUNC0(wlc_hw, SICF_MPCLKE, 0);
}