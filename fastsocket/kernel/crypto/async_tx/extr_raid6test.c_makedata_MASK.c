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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/ * data ; 
 int /*<<< orphan*/ * dataptrs ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(int disks)
{
	int i, j;

	for (i = 0; i < disks; i++) {
		for (j = 0; j < PAGE_SIZE/sizeof(u32); j += sizeof(u32)) {
			u32 *p = FUNC0(data[i]) + j;

			*p = FUNC1();
		}

		dataptrs[i] = data[i];
	}
}