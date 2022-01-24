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
typedef  int /*<<< orphan*/  u32 ;
struct ehea_qp_init_attr {int rq_count; int /*<<< orphan*/  act_wqe_size_enc_rq3; int /*<<< orphan*/  nr_rq3_pages; int /*<<< orphan*/  act_wqe_size_enc_rq2; int /*<<< orphan*/  nr_rq2_pages; int /*<<< orphan*/  act_wqe_size_enc_rq1; int /*<<< orphan*/  nr_rq1_pages; int /*<<< orphan*/  act_wqe_size_enc_sq; int /*<<< orphan*/  nr_sq_pages; } ;
struct ehea_qp {int /*<<< orphan*/  fw_handle; int /*<<< orphan*/  hw_squeue; int /*<<< orphan*/  hw_rqueue1; int /*<<< orphan*/  hw_rqueue2; struct ehea_qp_init_attr init_attr; int /*<<< orphan*/  hw_rqueue3; int /*<<< orphan*/  epas; struct ehea_adapter* adapter; } ;
struct ehea_adapter {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FORCE_FREE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ H_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct ehea_qp_init_attr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ehea_qp*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ehea_adapter*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ehea_qp*) ; 
 struct ehea_qp* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

struct ehea_qp *FUNC9(struct ehea_adapter *adapter,
			       u32 pd, struct ehea_qp_init_attr *init_attr)
{
	int ret;
	u64 hret;
	struct ehea_qp *qp;
	u32 wqe_size_in_bytes_sq, wqe_size_in_bytes_rq1;
	u32 wqe_size_in_bytes_rq2, wqe_size_in_bytes_rq3;


	qp = FUNC7(sizeof(*qp), GFP_KERNEL);
	if (!qp) {
		FUNC0("no mem for qp");
		return NULL;
	}

	qp->adapter = adapter;

	hret = FUNC1(adapter->handle, init_attr, pd,
					&qp->fw_handle, &qp->epas);
	if (hret != H_SUCCESS) {
		FUNC0("ehea_h_alloc_resource_qp failed");
		goto out_freemem;
	}

	wqe_size_in_bytes_sq = FUNC8(init_attr->act_wqe_size_enc_sq);
	wqe_size_in_bytes_rq1 = FUNC8(init_attr->act_wqe_size_enc_rq1);
	wqe_size_in_bytes_rq2 = FUNC8(init_attr->act_wqe_size_enc_rq2);
	wqe_size_in_bytes_rq3 = FUNC8(init_attr->act_wqe_size_enc_rq3);

	ret = FUNC4(qp, &qp->hw_squeue, init_attr->nr_sq_pages,
				     wqe_size_in_bytes_sq,
				     init_attr->act_wqe_size_enc_sq, adapter,
				     0);
	if (ret) {
		FUNC0("can't register for sq ret=%x", ret);
		goto out_freeres;
	}

	ret = FUNC4(qp, &qp->hw_rqueue1,
				     init_attr->nr_rq1_pages,
				     wqe_size_in_bytes_rq1,
				     init_attr->act_wqe_size_enc_rq1,
				     adapter, 1);
	if (ret) {
		FUNC0("can't register for rq1 ret=%x", ret);
		goto out_kill_hwsq;
	}

	if (init_attr->rq_count > 1) {
		ret = FUNC4(qp, &qp->hw_rqueue2,
					     init_attr->nr_rq2_pages,
					     wqe_size_in_bytes_rq2,
					     init_attr->act_wqe_size_enc_rq2,
					     adapter, 2);
		if (ret) {
			FUNC0("can't register for rq2 ret=%x", ret);
			goto out_kill_hwr1q;
		}
	}

	if (init_attr->rq_count > 2) {
		ret = FUNC4(qp, &qp->hw_rqueue3,
					     init_attr->nr_rq3_pages,
					     wqe_size_in_bytes_rq3,
					     init_attr->act_wqe_size_enc_rq3,
					     adapter, 3);
		if (ret) {
			FUNC0("can't register for rq3 ret=%x", ret);
			goto out_kill_hwr2q;
		}
	}

	qp->init_attr = *init_attr;

	return qp;

out_kill_hwr2q:
	FUNC5(&qp->hw_rqueue2);

out_kill_hwr1q:
	FUNC5(&qp->hw_rqueue1);

out_kill_hwsq:
	FUNC5(&qp->hw_squeue);

out_freeres:
	FUNC2(adapter->handle, qp->fw_handle);
	FUNC3(adapter->handle, qp->fw_handle, FORCE_FREE);

out_freemem:
	FUNC6(qp);
	return NULL;
}