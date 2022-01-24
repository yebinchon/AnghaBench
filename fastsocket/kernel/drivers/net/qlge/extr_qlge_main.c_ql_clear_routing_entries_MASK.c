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
struct ql_adapter {int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEM_RT_IDX_MASK ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC0 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ql_adapter*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ql_adapter *qdev)
{
	int i, status = 0;

	status = FUNC1(qdev, SEM_RT_IDX_MASK);
	if (status)
		return status;
	/* Clear all the entries in the routing table. */
	for (i = 0; i < 16; i++) {
		status = FUNC3(qdev, i, 0, 0);
		if (status) {
			FUNC0(qdev, ifup, qdev->ndev,
				  "Failed to init routing register for CAM packets.\n");
			break;
		}
	}
	FUNC2(qdev, SEM_RT_IDX_MASK);
	return status;
}