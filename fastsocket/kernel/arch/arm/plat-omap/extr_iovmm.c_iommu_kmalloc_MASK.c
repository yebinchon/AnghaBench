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
struct iommu {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  IOVMF_ALLOC ; 
 int /*<<< orphan*/  IOVMF_DA_ANON ; 
 int /*<<< orphan*/  IOVMF_DA_FIXED ; 
 int /*<<< orphan*/  IOVMF_HW_MASK ; 
 int /*<<< orphan*/  IOVMF_LINEAR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct iommu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 

u32 FUNC6(struct iommu *obj, u32 da, size_t bytes, u32 flags)
{
	void *va;
	u32 pa;

	if (!obj || !obj->dev || !bytes)
		return -EINVAL;

	bytes = FUNC1(bytes);

	va = FUNC4(bytes, GFP_KERNEL | GFP_DMA);
	if (!va)
		return -ENOMEM;
	pa = FUNC5(va);

	flags &= IOVMF_HW_MASK;
	flags |= IOVMF_LINEAR;
	flags |= IOVMF_ALLOC;
	flags |= (da ? IOVMF_DA_FIXED : IOVMF_DA_ANON);

	da = FUNC2(obj, da, pa, va, bytes, flags);
	if (FUNC0(da))
		FUNC3(va);

	return da;
}