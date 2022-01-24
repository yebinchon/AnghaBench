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
struct sg_table {int dummy; } ;
struct iommu {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  IOVMF_DA_ANON ; 
 int /*<<< orphan*/  IOVMF_DA_FIXED ; 
 int /*<<< orphan*/  IOVMF_DISCONT ; 
 int /*<<< orphan*/  IOVMF_HW_MASK ; 
 int /*<<< orphan*/  IOVMF_MMIO ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct iommu*,int /*<<< orphan*/ ,struct sg_table const*,void*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (struct sg_table const*) ; 
 void* FUNC6 (struct sg_table const*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 

u32 FUNC8(struct iommu *obj, u32 da, const struct sg_table *sgt,
		 u32 flags)
{
	size_t bytes;
	void *va;

	if (!obj || !obj->dev || !sgt)
		return -EINVAL;

	bytes = FUNC5(sgt);
	if (!bytes)
		return -EINVAL;
	bytes = FUNC2(bytes);

	va = FUNC6(sgt);
	if (FUNC0(va))
		return FUNC3(va);

	flags &= IOVMF_HW_MASK;
	flags |= IOVMF_DISCONT;
	flags |= IOVMF_MMIO;
	flags |= (da ? IOVMF_DA_FIXED : IOVMF_DA_ANON);

	da = FUNC4(obj, da, sgt, va, bytes, flags);
	if (FUNC1(da))
		FUNC7(va);

	return da;
}