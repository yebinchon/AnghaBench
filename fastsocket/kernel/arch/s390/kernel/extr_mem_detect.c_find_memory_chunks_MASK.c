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
struct mem_chunk {unsigned long addr; unsigned long size; int type; } ;

/* Variables and functions */
 unsigned long long ADDR2G ; 
 int CHUNK_READ_ONLY ; 
 int CHUNK_READ_WRITE ; 
 int MEMORY_CHUNKS ; 
 unsigned long long FUNC0 (unsigned long long,unsigned long long) ; 
 unsigned long long FUNC1 () ; 
 unsigned long long FUNC2 () ; 
 int FUNC3 (unsigned long) ; 

__attribute__((used)) static void FUNC4(struct mem_chunk chunk[])
{
	unsigned long long memsize, rnmax, rzm;
	unsigned long addr = 0, size;
	int i = 0, type;

	rzm = FUNC2();
	rnmax = FUNC1();
	memsize = rzm * rnmax;
	if (!rzm)
		rzm = 1ULL << 17;
	if (sizeof(long) == 4) {
		rzm = FUNC0(ADDR2G, rzm);
		memsize = memsize ? FUNC0(ADDR2G, memsize) : ADDR2G;
	}
	do {
		size = 0;
		type = FUNC3(addr);
		do {
			size += rzm;
			if (memsize && addr + size >= memsize)
				break;
		} while (type == FUNC3(addr + size));
		if (type == CHUNK_READ_WRITE || type == CHUNK_READ_ONLY) {
			chunk[i].addr = addr;
			chunk[i].size = size;
			chunk[i].type = type;
			i++;
		}
		addr += size;
	} while (addr < memsize && i < MEMORY_CHUNKS);
}