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
typedef  int u32 ;
struct iotlb_lock {int base; int vict; } ;
struct iommu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MMU_LOCK ; 
 int MMU_LOCK_BASE_SHIFT ; 
 int MMU_LOCK_VICT_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct iommu*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct iommu *obj, struct iotlb_lock *l)
{
	u32 val;

	FUNC0(l->base != 0); /* Currently no preservation is used */

	val = (l->base << MMU_LOCK_BASE_SHIFT);
	val |= (l->vict << MMU_LOCK_VICT_SHIFT);

	FUNC1(obj, val, MMU_LOCK);
}