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
struct cnic_ulp_ops {int /*<<< orphan*/  (* cnic_stop ) (int /*<<< orphan*/ ) ;} ;
struct cnic_local {int /*<<< orphan*/ * ulp_flags; int /*<<< orphan*/ * ulp_handle; struct cnic_ulp_ops** ulp_ops; } ;

/* Variables and functions */
 int CNIC_ULP_ISCSI ; 
 int /*<<< orphan*/  ISCSI_KEVENT_IF_DOWN ; 
 int /*<<< orphan*/  ULP_F_CALL_PENDING ; 
 int /*<<< orphan*/  ULP_F_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cnic_lock ; 
 int /*<<< orphan*/  FUNC1 (struct cnic_local*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct cnic_local *cp, int if_type)
{
	struct cnic_ulp_ops *ulp_ops;

	if (if_type == CNIC_ULP_ISCSI)
		FUNC1(cp, ISCSI_KEVENT_IF_DOWN, NULL);

	FUNC2(&cnic_lock);
	ulp_ops = cp->ulp_ops[if_type];
	if (!ulp_ops) {
		FUNC3(&cnic_lock);
		return;
	}
	FUNC4(ULP_F_CALL_PENDING, &cp->ulp_flags[if_type]);
	FUNC3(&cnic_lock);

	if (FUNC6(ULP_F_START, &cp->ulp_flags[if_type]))
		ulp_ops->cnic_stop(cp->ulp_handle[if_type]);

	FUNC0(ULP_F_CALL_PENDING, &cp->ulp_flags[if_type]);
}