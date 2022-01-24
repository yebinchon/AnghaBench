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
struct iovm_struct {int dummy; } ;
struct iommu {int /*<<< orphan*/  mmap_lock; } ;

/* Variables and functions */
 struct iovm_struct* FUNC0 (struct iommu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct iovm_struct *FUNC3(struct iommu *obj, u32 da)
{
	struct iovm_struct *area;

	FUNC1(&obj->mmap_lock);
	area = FUNC0(obj, da);
	FUNC2(&obj->mmap_lock);

	return area;
}