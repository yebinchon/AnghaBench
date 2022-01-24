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
 int /*<<< orphan*/  ACT2000_PORTLEN ; 
 int /*<<< orphan*/  ISA_REGION ; 
 int FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned short,int /*<<< orphan*/ ,char*) ; 

int
FUNC3(unsigned short portbase)
{
        int ret = 0;

	if (FUNC2(portbase, ACT2000_PORTLEN, "act2000isa")) {
                ret = FUNC0(portbase);
		FUNC1(portbase, ISA_REGION);
	}
        return ret;
}