#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iounit_struct {int /*<<< orphan*/  lock; int /*<<< orphan*/  bmap; } ;
struct TYPE_2__ {struct iounit_struct* iommu; } ;
struct device {TYPE_1__ archdata; } ;
typedef  unsigned long __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned long IOUNIT_DMA_BASE ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct device *dev, __u32 vaddr, unsigned long len)
{
	struct iounit_struct *iounit = dev->archdata.iommu;
	unsigned long flags;
	
	FUNC2(&iounit->lock, flags);
	len = ((vaddr & ~PAGE_MASK) + len + (PAGE_SIZE-1)) >> PAGE_SHIFT;
	vaddr = (vaddr - IOUNIT_DMA_BASE) >> PAGE_SHIFT;
	FUNC0(("iounit_release %08lx-%08lx\n", (long)vaddr, (long)len+vaddr));
	for (len += vaddr; vaddr < len; vaddr++)
		FUNC1(vaddr, iounit->bmap);
	FUNC3(&iounit->lock, flags);
}