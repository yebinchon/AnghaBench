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
 int /*<<< orphan*/  IOVMF_DA_ANON ; 
 int /*<<< orphan*/  IOVMF_DA_FIXED ; 
 int /*<<< orphan*/  IOVMF_HW_MASK ; 
 int /*<<< orphan*/  IOVMF_LINEAR ; 
 int /*<<< orphan*/  IOVMF_MMIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct iommu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

u32 FUNC5(struct iommu *obj, u32 da, u32 pa, size_t bytes,
		 u32 flags)
{
	void *va;

	if (!obj || !obj->dev || !bytes)
		return -EINVAL;

	bytes = FUNC1(bytes);

	va = FUNC3(pa, bytes);
	if (!va)
		return -ENOMEM;

	flags &= IOVMF_HW_MASK;
	flags |= IOVMF_LINEAR;
	flags |= IOVMF_MMIO;
	flags |= (da ? IOVMF_DA_FIXED : IOVMF_DA_ANON);

	da = FUNC2(obj, da, pa, va, bytes, flags);
	if (FUNC0(da))
		FUNC4(va);

	return da;
}