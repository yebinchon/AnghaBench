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
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  IOVMF_ALLOC ; 
 int /*<<< orphan*/  IOVMF_DA_ANON ; 
 int /*<<< orphan*/  IOVMF_DA_FIXED ; 
 int /*<<< orphan*/  IOVMF_DISCONT ; 
 int /*<<< orphan*/  IOVMF_HW_MASK ; 
 scalar_t__ FUNC0 (struct sg_table*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct sg_table*) ; 
 int /*<<< orphan*/  FUNC4 (struct iommu*,int /*<<< orphan*/ ,struct sg_table*,void*,size_t,int /*<<< orphan*/ ) ; 
 struct sg_table* FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sg_table*) ; 
 int /*<<< orphan*/  FUNC7 (struct sg_table*,void*) ; 
 int /*<<< orphan*/  FUNC8 (struct sg_table*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 void* FUNC10 (size_t) ; 

u32 FUNC11(struct iommu *obj, u32 da, size_t bytes, u32 flags)
{
	void *va;
	struct sg_table *sgt;

	if (!obj || !obj->dev || !bytes)
		return -EINVAL;

	bytes = FUNC2(bytes);

	va = FUNC10(bytes);
	if (!va)
		return -ENOMEM;

	sgt = FUNC5(bytes, flags);
	if (FUNC0(sgt)) {
		da = FUNC3(sgt);
		goto err_sgt_alloc;
	}
	FUNC7(sgt, va);

	flags &= IOVMF_HW_MASK;
	flags |= IOVMF_DISCONT;
	flags |= IOVMF_ALLOC;
	flags |= (da ? IOVMF_DA_FIXED : IOVMF_DA_ANON);

	da = FUNC4(obj, da, sgt, va, bytes, flags);
	if (FUNC1(da))
		goto err_iommu_vmap;

	return da;

err_iommu_vmap:
	FUNC6(sgt);
	FUNC8(sgt);
err_sgt_alloc:
	FUNC9(va);
	return da;
}