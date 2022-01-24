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
struct drm_open_hash {unsigned int order; int /*<<< orphan*/ * table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/ * FUNC1 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned int) ; 

int FUNC3(struct drm_open_hash *ht, unsigned int order)
{
	unsigned int size = 1 << order;

	ht->order = order;
	ht->table = NULL;
	if (size <= PAGE_SIZE / sizeof(*ht->table))
		ht->table = FUNC1(size, sizeof(*ht->table), GFP_KERNEL);
	else
		ht->table = FUNC2(size*sizeof(*ht->table));
	if (!ht->table) {
		FUNC0("Out of memory for hash table\n");
		return -ENOMEM;
	}
	return 0;
}