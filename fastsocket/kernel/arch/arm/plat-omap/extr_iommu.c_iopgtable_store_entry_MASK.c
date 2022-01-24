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
struct iotlb_entry {int /*<<< orphan*/  da; } ;
struct iommu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iommu*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct iommu*,struct iotlb_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct iommu*,struct iotlb_entry*) ; 

int FUNC3(struct iommu *obj, struct iotlb_entry *e)
{
	int err;

	FUNC0(obj, e->da);
	err = FUNC1(obj, e);
#ifdef PREFETCH_IOTLB
	if (!err)
		load_iotlb_entry(obj, e);
#endif
	return err;
}