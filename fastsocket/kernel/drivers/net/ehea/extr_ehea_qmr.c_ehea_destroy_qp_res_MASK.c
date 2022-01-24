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
typedef  scalar_t__ u64 ;
struct ehea_qp_init_attr {int rq_count; } ;
struct ehea_qp {int /*<<< orphan*/  hw_rqueue3; int /*<<< orphan*/  hw_rqueue2; int /*<<< orphan*/  hw_rqueue1; int /*<<< orphan*/  hw_squeue; int /*<<< orphan*/  fw_handle; TYPE_1__* adapter; struct ehea_qp_init_attr init_attr; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 scalar_t__ H_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ehea_qp*) ; 

__attribute__((used)) static u64 FUNC4(struct ehea_qp *qp, u64 force)
{
	u64 hret;
	struct ehea_qp_init_attr *qp_attr = &qp->init_attr;


	FUNC0(qp->adapter->handle, qp->fw_handle);
	hret = FUNC1(qp->adapter->handle, qp->fw_handle, force);
	if (hret != H_SUCCESS)
		return hret;

	FUNC2(&qp->hw_squeue);
	FUNC2(&qp->hw_rqueue1);

	if (qp_attr->rq_count > 1)
		FUNC2(&qp->hw_rqueue2);
	if (qp_attr->rq_count > 2)
		FUNC2(&qp->hw_rqueue3);
	FUNC3(qp);

	return hret;
}