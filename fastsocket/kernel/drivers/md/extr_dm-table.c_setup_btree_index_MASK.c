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
struct dm_table {unsigned int* counts; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 unsigned int KEYS_PER_NODE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/ * FUNC1 (struct dm_table*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_table*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(unsigned int l, struct dm_table *t)
{
	unsigned int n, k;
	sector_t *node;

	for (n = 0U; n < t->counts[l]; n++) {
		node = FUNC1(t, l, n);

		for (k = 0U; k < KEYS_PER_NODE; k++)
			node[k] = FUNC2(t, l + 1, FUNC0(n, k));
	}

	return 0;
}