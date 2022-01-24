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
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ xquad_portio ; 

__attribute__((used)) static void FUNC5(unsigned bus, unsigned devfn, unsigned reg)
{
	unsigned val = FUNC1(bus, devfn, reg);
	if (xquad_portio)
		FUNC4(val, FUNC2(0xcf8, FUNC0(bus)));
	else
		FUNC3(val, 0xCF8);
}