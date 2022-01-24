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
struct ql3_adapter {int /*<<< orphan*/ * shadow_reg_virt_addr; int /*<<< orphan*/  shadow_reg_phy_addr; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ql3_adapter*) ; 

__attribute__((used)) static void FUNC6(struct ql3_adapter *qdev)
{
	FUNC4(qdev);
	FUNC2(qdev);
	FUNC5(qdev);
	FUNC1(qdev);
	FUNC3(qdev);
	if (qdev->shadow_reg_virt_addr != NULL) {
		FUNC0(qdev->pdev,
				    PAGE_SIZE,
				    qdev->shadow_reg_virt_addr,
				    qdev->shadow_reg_phy_addr);
		qdev->shadow_reg_virt_addr = NULL;
	}
}