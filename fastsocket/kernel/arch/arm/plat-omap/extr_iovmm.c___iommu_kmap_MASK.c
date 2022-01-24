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
struct iommu {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sg_table*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sg_table*) ; 
 int /*<<< orphan*/  FUNC3 (struct iommu*,int /*<<< orphan*/ ,struct sg_table*,void*,size_t,int /*<<< orphan*/ ) ; 
 struct sg_table* FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sg_table*) ; 
 int /*<<< orphan*/  FUNC6 (struct sg_table*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct sg_table*) ; 

__attribute__((used)) static u32 FUNC8(struct iommu *obj, u32 da, u32 pa, void *va,
			  size_t bytes, u32 flags)
{
	struct sg_table *sgt;

	sgt = FUNC4(bytes, flags);
	if (FUNC0(sgt))
		return FUNC2(sgt);

	FUNC6(sgt, pa, bytes);

	da = FUNC3(obj, da, sgt, va, bytes, flags);
	if (FUNC1(da)) {
		FUNC5(sgt);
		FUNC7(sgt);
	}

	return da;
}