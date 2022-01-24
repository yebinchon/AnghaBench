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
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(unsigned long nr)
{
	unsigned char mask = ~(0x10 << FUNC1(nr));

	FUNC2(FUNC0(nr), mask, 0);
}