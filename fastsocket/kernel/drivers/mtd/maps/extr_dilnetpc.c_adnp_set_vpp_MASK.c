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
struct map_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CSC_RBWR ; 
 int /*<<< orphan*/  dnpc_spin ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int vpp_counter ; 

__attribute__((used)) static void FUNC5(struct map_info *not_used, int on)
{
	FUNC3(&dnpc_spin);

	if (on)
	{
		if(++vpp_counter == 1)
			FUNC2(CSC_RBWR, FUNC1(CSC_RBWR) & ~0x8);
	}
	else
	{
		if(--vpp_counter == 0)
			FUNC2(CSC_RBWR, FUNC1(CSC_RBWR) | 0x8);
		else
			FUNC0(vpp_counter < 0);
	}
	FUNC4(&dnpc_spin);
}