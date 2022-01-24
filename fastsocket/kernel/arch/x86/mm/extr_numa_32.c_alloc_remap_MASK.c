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
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  L1_CACHE_BYTES ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,unsigned long) ; 
 void** node_remap_alloc_vaddr ; 
 void** node_remap_end_vaddr ; 

void *FUNC2(int nid, unsigned long size)
{
	void *allocation = node_remap_alloc_vaddr[nid];

	size = FUNC0(size, L1_CACHE_BYTES);

	if (!allocation || (allocation + size) >= node_remap_end_vaddr[nid])
		return NULL;

	node_remap_alloc_vaddr[nid] += size;
	FUNC1(allocation, 0, size);

	return allocation;
}