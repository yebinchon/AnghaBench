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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned long ppc64_pft_size ; 

__attribute__((used)) static void FUNC1(void)
{
	unsigned long size_bytes = 1UL << ppc64_pft_size;
	unsigned long hpte_count = size_bytes >> 4;
	int i;
	u64 dummy0, dummy1;

	/* TODO: Use bulk call */
	for (i = 0; i < hpte_count; i++)
		FUNC0(0, i, 0, 0, -1UL, -1UL, &dummy0, &dummy1);
}