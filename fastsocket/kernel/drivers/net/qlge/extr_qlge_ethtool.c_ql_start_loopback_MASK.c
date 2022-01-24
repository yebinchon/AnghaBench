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
struct ql_adapter {int /*<<< orphan*/  link_config; int /*<<< orphan*/  flags; int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_LOOPBACK_PCS ; 
 int /*<<< orphan*/  QL_LB_LINK_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ql_adapter *qdev)
{
	if (FUNC2(qdev->ndev)) {
		FUNC4(QL_LB_LINK_UP, &qdev->flags);
		FUNC1(qdev->ndev);
	} else
		FUNC0(QL_LB_LINK_UP, &qdev->flags);
	qdev->link_config |= CFG_LOOPBACK_PCS;
	return FUNC3(qdev);
}