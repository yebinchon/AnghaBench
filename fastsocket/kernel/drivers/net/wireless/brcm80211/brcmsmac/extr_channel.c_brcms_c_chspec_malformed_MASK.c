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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(u16 chanspec)
{
	/* must be 2G or 5G band */
	if (!FUNC3(chanspec) && !FUNC1(chanspec))
		return true;
	/* must be 20 or 40 bandwidth */
	if (!FUNC2(chanspec) && !FUNC0(chanspec))
		return true;

	/* 20MHZ b/w must have no ctl sb, 40 must have a ctl sb */
	if (FUNC0(chanspec)) {
		if (!FUNC5(chanspec))
			return true;
	} else if (!FUNC6(chanspec) && !FUNC4(chanspec)) {
		return true;
	}

	return false;
}