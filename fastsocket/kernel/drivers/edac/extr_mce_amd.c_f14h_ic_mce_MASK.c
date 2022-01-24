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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ R4_IRD ; 
 scalar_t__ R4_SNOOP ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static bool FUNC5(u16 ec, u8 xec)
{
	u8 r4    = FUNC2(ec);
	bool ret = true;

	if (FUNC1(ec)) {
		if (FUNC3(ec) != 0 || FUNC0(ec) != 1)
			ret = false;

		if (r4 == R4_IRD)
			FUNC4("Data/tag array parity error for a tag hit.\n");
		else if (r4 == R4_SNOOP)
			FUNC4("Tag error during snoop/victimization.\n");
		else
			ret = false;
	}
	return ret;
}