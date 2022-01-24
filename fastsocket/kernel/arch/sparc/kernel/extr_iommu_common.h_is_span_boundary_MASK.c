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
struct scatterlist {scalar_t__ length; scalar_t__ dma_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  IO_PAGE_SIZE ; 
 unsigned long FUNC0 (struct scatterlist*) ; 
 int FUNC1 (unsigned long,int,unsigned long,unsigned long) ; 
 int FUNC2 (unsigned long,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(unsigned long entry,
				   unsigned long shift,
				   unsigned long boundary_size,
				   struct scatterlist *outs,
				   struct scatterlist *sg)
{
	unsigned long paddr = FUNC0(outs);
	int nr = FUNC2(paddr, outs->dma_length + sg->length,
				 IO_PAGE_SIZE);

	return FUNC1(entry, nr, shift, boundary_size);
}