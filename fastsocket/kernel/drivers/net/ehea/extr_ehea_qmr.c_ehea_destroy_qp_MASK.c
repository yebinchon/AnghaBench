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
typedef  scalar_t__ u64 ;
struct ehea_qp {int /*<<< orphan*/  fw_handle; int /*<<< orphan*/  adapter; int /*<<< orphan*/  epas; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FORCE_FREE ; 
 scalar_t__ H_R_STATE ; 
 scalar_t__ H_SUCCESS ; 
 int /*<<< orphan*/  NORMAL_FREE ; 
 scalar_t__ FUNC0 (struct ehea_qp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct ehea_qp *qp)
{
	u64 hret, aer, aerr;
	if (!qp)
		return 0;

	FUNC3(&qp->epas);

	hret = FUNC0(qp, NORMAL_FREE);
	if (hret == H_R_STATE) {
		FUNC2(qp->adapter, qp->fw_handle, &aer, &aerr);
		hret = FUNC0(qp, FORCE_FREE);
	}

	if (hret != H_SUCCESS) {
		FUNC1("destroy QP failed");
		return -EIO;
	}

	return 0;
}