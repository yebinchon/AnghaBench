#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct ql_adapter {TYPE_1__ timer; int /*<<< orphan*/  ndev; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  STS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  ifup ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ql_adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	struct ql_adapter *qdev = (struct ql_adapter *)data;
	u32 var = 0;

	var = FUNC3(qdev, STS);
	if (FUNC2(qdev->pdev)) {
		FUNC1(qdev, ifup, qdev->ndev, "EEH STS = 0x%.08x.\n", var);
		return;
	}

	qdev->timer.expires = jiffies + (5*HZ);
	FUNC0(&qdev->timer);
}