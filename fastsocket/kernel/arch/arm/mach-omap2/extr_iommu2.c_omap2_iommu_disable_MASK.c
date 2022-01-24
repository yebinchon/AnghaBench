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
struct iommu {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMU_CNTL ; 
 int /*<<< orphan*/  MMU_CNTL_MASK ; 
 int /*<<< orphan*/  MMU_SYSCONFIG ; 
 int /*<<< orphan*/  MMU_SYS_IDLE_FORCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iommu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct iommu *obj)
{
	u32 l = FUNC1(obj, MMU_CNTL);

	l &= ~MMU_CNTL_MASK;
	FUNC2(obj, l, MMU_CNTL);
	FUNC2(obj, MMU_SYS_IDLE_FORCE, MMU_SYSCONFIG);

	FUNC0(obj->dev, "%s is shutting down\n", obj->name);
}