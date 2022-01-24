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
struct dma_chunk {unsigned long size; void* addr; } ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 void* FUNC0 (unsigned char*) ; 
 void* FUNC1 (unsigned long,scalar_t__) ; 

__attribute__((used)) static inline void FUNC2(struct dma_chunk *list,
				       unsigned char *p, unsigned long length)
{
	unsigned long done;
	int i = 1;

	/* FIXME: skbs are continguous in real addresses.  Do we
	 * really need to break it into PAGE_SIZE chunks, or can we do
	 * it just at the granularity of iSeries real->absolute
	 * mapping?  Indeed, given the way the allocator works, can we
	 * count on them being absolutely contiguous? */
	list[0].addr = FUNC0(p);
	list[0].size = FUNC1(length,
			   PAGE_SIZE - ((unsigned long)p & ~PAGE_MASK));

	done = list[0].size;
	while (done < length) {
		list[i].addr = FUNC0(p + done);
		list[i].size = FUNC1(length-done, PAGE_SIZE);
		done += list[i].size;
		i++;
	}
}