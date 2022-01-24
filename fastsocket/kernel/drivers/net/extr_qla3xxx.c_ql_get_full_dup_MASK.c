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
struct ql3_adapter {int mac_index; int /*<<< orphan*/  hw_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  QL_PHY_GIO_SEM_MASK ; 
 int QL_RESOURCE_BITS_BASE_CODE ; 
 int FUNC0 (struct ql3_adapter*) ; 
 scalar_t__ FUNC1 (struct ql3_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ql3_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct ql3_adapter *qdev)
{
	int status;
	unsigned long hw_flags;
	FUNC3(&qdev->hw_lock, hw_flags);
	if(FUNC1(qdev, QL_PHY_GIO_SEM_MASK,
		(QL_RESOURCE_BITS_BASE_CODE | (qdev->mac_index) *
			 2) << 7)) {
		FUNC4(&qdev->hw_lock, hw_flags);
		return 0;
	}
	status = FUNC0(qdev);
	FUNC2(qdev, QL_PHY_GIO_SEM_MASK);
	FUNC4(&qdev->hw_lock, hw_flags);
	return status;
}