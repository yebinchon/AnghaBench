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
struct qi_desc {int low; scalar_t__ high; } ;
struct intel_iommu {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int QI_IEC_SELECTIVE ; 
 int QI_IEC_TYPE ; 
 int FUNC2 (struct qi_desc*,struct intel_iommu*) ; 

__attribute__((used)) static int FUNC3(struct intel_iommu *iommu, int index, int mask)
{
	struct qi_desc desc;

	desc.low = FUNC0(index) | QI_IEC_TYPE | FUNC1(mask)
		   | QI_IEC_SELECTIVE;
	desc.high = 0;

	return FUNC2(&desc, iommu);
}