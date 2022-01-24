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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int) ; 

__attribute__((used)) static int FUNC3(char *buf)
{
	FUNC2("hello world!", 12, 0x55, 0x10);
#ifndef CONFIG_SMP
	FUNC0();
#endif
#if L2_LENGTH
	kgdb_l2_test();
#endif

	return 0;
}