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
 int /*<<< orphan*/  WRITE_REGISTER ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(unsigned int base,
                      unsigned int reg,
		      unsigned int value)
{
	FUNC0(base, WRITE_REGISTER);
        FUNC1(base, reg);
        FUNC1(base, value);
}