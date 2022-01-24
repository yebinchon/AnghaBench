#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct be_queue_info {int dummy; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_mcc_compl {int dummy; } ;
struct TYPE_3__ {struct be_queue_info q; struct be_queue_info cq; } ;
struct be_adapter {TYPE_1__ mcc_obj; } ;
struct TYPE_4__ {int /*<<< orphan*/  q; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCC_CQ_LEN ; 
 int /*<<< orphan*/  MCC_Q_LEN ; 
 int /*<<< orphan*/  QTYPE_CQ ; 
 scalar_t__ FUNC0 (struct be_adapter*,struct be_queue_info*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct be_adapter*,struct be_queue_info*,struct be_queue_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct be_adapter*,struct be_queue_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct be_adapter*,struct be_queue_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct be_adapter*,struct be_queue_info*) ; 
 TYPE_2__* FUNC5 (struct be_adapter*) ; 

__attribute__((used)) static int FUNC6(struct be_adapter *adapter)
{
	struct be_queue_info *q, *cq;

	cq = &adapter->mcc_obj.cq;
	if (FUNC3(adapter, cq, MCC_CQ_LEN,
			sizeof(struct be_mcc_compl)))
		goto err;

	/* Use the default EQ for MCC completions */
	if (FUNC0(adapter, cq, &FUNC5(adapter)->q, true, 0))
		goto mcc_cq_free;

	q = &adapter->mcc_obj.q;
	if (FUNC3(adapter, q, MCC_Q_LEN, sizeof(struct be_mcc_wrb)))
		goto mcc_cq_destroy;

	if (FUNC1(adapter, q, cq))
		goto mcc_q_free;

	return 0;

mcc_q_free:
	FUNC4(adapter, q);
mcc_cq_destroy:
	FUNC2(adapter, cq, QTYPE_CQ);
mcc_cq_free:
	FUNC4(adapter, cq);
err:
	return -1;
}