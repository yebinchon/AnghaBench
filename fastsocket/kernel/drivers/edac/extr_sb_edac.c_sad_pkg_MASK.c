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

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC8(u32 reg, int interleave)
{
	switch (interleave) {
	case 0:
		return FUNC0(reg);
	case 1:
		return FUNC1(reg);
	case 2:
		return FUNC2(reg);
	case 3:
		return FUNC3(reg);
	case 4:
		return FUNC4(reg);
	case 5:
		return FUNC5(reg);
	case 6:
		return FUNC6(reg);
	case 7:
		return FUNC7(reg);
	default:
		return -EINVAL;
	}
}