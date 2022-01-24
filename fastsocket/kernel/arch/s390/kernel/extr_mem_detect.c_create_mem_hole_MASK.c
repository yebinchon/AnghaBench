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
struct mem_chunk {unsigned long size; unsigned long addr; int type; } ;

/* Variables and functions */
 int MEMORY_CHUNKS ; 
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_chunk*,unsigned long,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_chunk*,int,int) ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 

void FUNC4(struct mem_chunk chunk[], unsigned long addr,
		     unsigned long size, int type)
{
	unsigned long lh_start, lh_end, lh_size, ch_start, ch_end, ch_size;
	int i, ch_type;

	for (i = 0; i < MEMORY_CHUNKS; i++) {
		if (chunk[i].size == 0)
			continue;

		/* Define chunk properties */
		ch_start = chunk[i].addr;
		ch_size = chunk[i].size;
		ch_end = ch_start + ch_size - 1;
		ch_type = chunk[i].type;

		/* Is memory chunk hit by memory hole? */
		if (addr + size <= ch_start)
			continue; /* No: memory hole in front of chunk */
		if (addr > ch_end)
			continue; /* No: memory hole after chunk */

		/* Yes: Define local hole properties */
		lh_start = FUNC0(addr, chunk[i].addr);
		lh_end = FUNC3(addr + size - 1, ch_end);
		lh_size = lh_end - lh_start + 1;

		if (lh_start == ch_start && lh_end == ch_end) {
			/* Hole covers complete memory chunk */
			FUNC1(&chunk[i], lh_start, lh_size, type);
		} else if (lh_end == ch_end) {
			/* Hole starts in memory chunk and convers chunk end */
			FUNC2(chunk, i + 1, i);
			FUNC1(&chunk[i], ch_start, ch_size - lh_size,
				       ch_type);
			FUNC1(&chunk[i + 1], lh_start, lh_size, type);
			i += 1;
		} else if (lh_start == ch_start) {
			/* Hole ends in memory chunk */
			FUNC2(chunk, i + 1, i);
			FUNC1(&chunk[i], lh_start, lh_size, type);
			FUNC1(&chunk[i + 1], lh_end + 1,
				       ch_size - lh_size, ch_type);
			break;
		} else {
			/* Hole splits memory chunk */
			FUNC2(chunk, i + 2, i);
			FUNC1(&chunk[i], ch_start,
				       lh_start - ch_start, ch_type);
			FUNC1(&chunk[i + 1], lh_start, lh_size, type);
			FUNC1(&chunk[i + 2], lh_end + 1,
				       ch_end - lh_end, ch_type);
			break;
		}
	}
}