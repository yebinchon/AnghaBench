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
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (unsigned long) ; 

__attribute__((used)) static unsigned long FUNC4(unsigned long reg,
				       unsigned long reg_width)
{
	switch (reg_width) {
	case 8:
		return FUNC1(reg);
	case 16:
		return FUNC3(reg);
	case 32:
		return FUNC2(reg);
	}

	FUNC0();
	return 0;
}