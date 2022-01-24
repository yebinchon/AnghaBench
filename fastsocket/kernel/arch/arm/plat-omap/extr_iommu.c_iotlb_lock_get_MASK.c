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
struct iotlb_lock {int /*<<< orphan*/  base; int /*<<< orphan*/  vict; } ;
struct iommu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MMU_LOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iommu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct iommu *obj, struct iotlb_lock *l)
{
	u32 val;

	val = FUNC3(obj, MMU_LOCK);

	l->base = FUNC1(val);
	l->vict = FUNC2(val);

	FUNC0(l->base != 0); /* Currently no preservation is used */
}