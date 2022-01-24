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
 int CPU_NAME_LEN ; 
 scalar_t__ diag224_cpu_names ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(int index, char *name)
{
	FUNC0(name, diag224_cpu_names + ((index + 1) * CPU_NAME_LEN),
		CPU_NAME_LEN);
	name[CPU_NAME_LEN] = 0;
	FUNC1(name);
	return 0;
}