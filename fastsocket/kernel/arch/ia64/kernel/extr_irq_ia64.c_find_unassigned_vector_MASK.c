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
typedef  int /*<<< orphan*/  cpumask_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSPC ; 
 int IA64_FIRST_DEVICE_VECTOR ; 
 int IA64_NUM_DEVICE_VECTORS ; 
 int /*<<< orphan*/  cpu_online_map ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * vector_table ; 

__attribute__((used)) static inline int FUNC2(cpumask_t domain)
{
	cpumask_t mask;
	int pos, vector;

	FUNC0(mask, domain, cpu_online_map);
	if (FUNC1(mask))
		return -EINVAL;

	for (pos = 0; pos < IA64_NUM_DEVICE_VECTORS; pos++) {
		vector = IA64_FIRST_DEVICE_VECTOR + pos;
		FUNC0(mask, domain, vector_table[vector]);
		if (!FUNC1(mask))
			continue;
		return vector;
	}
	return -ENOSPC;
}