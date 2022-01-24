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
 scalar_t__ FUNC0 (unsigned int const) ; 
 scalar_t__ FUNC1 (unsigned int const) ; 
 unsigned int FUNC2 (unsigned int const) ; 
 unsigned int FUNC3 (unsigned int const) ; 
 unsigned int FUNC4 (unsigned int const) ; 
 unsigned int FUNC5 (unsigned int const) ; 
 scalar_t__ FUNC6 (unsigned int const) ; 
 scalar_t__ FUNC7 (unsigned int const) ; 

unsigned int FUNC8(const unsigned int opcode)
{
	unsigned int nRc = 0;

	if (FUNC0(opcode)) {
		nRc = FUNC2(opcode);
	} else if (FUNC1(opcode)) {
		nRc = FUNC3(opcode);
	} else if (FUNC7(opcode)) {
		nRc = FUNC5(opcode);
	} else if (FUNC6(opcode)) {
		nRc = FUNC4(opcode);
	} else {
		nRc = 0;
	}

	return nRc;
}