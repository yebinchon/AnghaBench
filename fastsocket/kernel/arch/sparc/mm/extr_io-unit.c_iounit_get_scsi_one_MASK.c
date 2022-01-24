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
struct iounit_struct {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {struct iounit_struct* iommu; } ;
struct device {TYPE_1__ archdata; } ;
typedef  unsigned long __u32 ;

/* Variables and functions */
 unsigned long FUNC0 (struct iounit_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static __u32 FUNC3(struct device *dev, char *vaddr, unsigned long len)
{
	struct iounit_struct *iounit = dev->archdata.iommu;
	unsigned long ret, flags;
	
	FUNC1(&iounit->lock, flags);
	ret = FUNC0(iounit, (unsigned long)vaddr, len);
	FUNC2(&iounit->lock, flags);
	return ret;
}