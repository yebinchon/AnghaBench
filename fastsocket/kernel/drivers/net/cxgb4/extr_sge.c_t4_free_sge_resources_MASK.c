#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  cntxt_id; scalar_t__ desc; int /*<<< orphan*/  sdesc; int /*<<< orphan*/  in_use; } ;
struct sge_ofld_txq {TYPE_2__ q; int /*<<< orphan*/  sendq; int /*<<< orphan*/  qresume_tsk; } ;
struct TYPE_7__ {scalar_t__ desc; } ;
struct sge_ofld_rxq {int /*<<< orphan*/  fl; TYPE_4__ rspq; } ;
struct sge_eth_txq {TYPE_2__ q; } ;
struct sge_eth_rxq {int /*<<< orphan*/  fl; TYPE_4__ rspq; } ;
struct sge_ctrl_txq {TYPE_2__ q; int /*<<< orphan*/  sendq; int /*<<< orphan*/  qresume_tsk; } ;
struct TYPE_5__ {int ethqsets; int ofldqsets; int rdmaqs; int /*<<< orphan*/  egr_map; TYPE_4__ intrq; TYPE_4__ fw_evtq; struct sge_ofld_txq* ctrlq; struct sge_ofld_txq* ofldtxq; struct sge_ofld_rxq* rdmarxq; struct sge_ofld_rxq* ofldrxq; struct sge_eth_txq* ethtxq; struct sge_eth_rxq* ethrxq; } ;
struct adapter {TYPE_1__ sge; int /*<<< orphan*/  fn; } ;

/* Variables and functions */
 int FUNC0 (struct sge_ofld_txq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct adapter *adap)
{
	int i;
	struct sge_eth_rxq *eq = adap->sge.ethrxq;
	struct sge_eth_txq *etq = adap->sge.ethtxq;
	struct sge_ofld_rxq *oq = adap->sge.ofldrxq;

	/* clean up Ethernet Tx/Rx queues */
	for (i = 0; i < adap->sge.ethqsets; i++, eq++, etq++) {
		if (eq->rspq.desc)
			FUNC2(adap, &eq->rspq, &eq->fl);
		if (etq->q.desc) {
			FUNC8(adap, adap->fn, adap->fn, 0,
				       etq->q.cntxt_id);
			FUNC3(adap, &etq->q, etq->q.in_use, true);
			FUNC5(etq->q.sdesc);
			FUNC4(adap, &etq->q);
		}
	}

	/* clean up RDMA and iSCSI Rx queues */
	for (i = 0; i < adap->sge.ofldqsets; i++, oq++) {
		if (oq->rspq.desc)
			FUNC2(adap, &oq->rspq, &oq->fl);
	}
	for (i = 0, oq = adap->sge.rdmarxq; i < adap->sge.rdmaqs; i++, oq++) {
		if (oq->rspq.desc)
			FUNC2(adap, &oq->rspq, &oq->fl);
	}

	/* clean up offload Tx queues */
	for (i = 0; i < FUNC0(adap->sge.ofldtxq); i++) {
		struct sge_ofld_txq *q = &adap->sge.ofldtxq[i];

		if (q->q.desc) {
			FUNC10(&q->qresume_tsk);
			FUNC9(adap, adap->fn, adap->fn, 0,
					q->q.cntxt_id);
			FUNC3(adap, &q->q, q->q.in_use, false);
			FUNC5(q->q.sdesc);
			FUNC1(&q->sendq);
			FUNC4(adap, &q->q);
		}
	}

	/* clean up control Tx queues */
	for (i = 0; i < FUNC0(adap->sge.ctrlq); i++) {
		struct sge_ctrl_txq *cq = &adap->sge.ctrlq[i];

		if (cq->q.desc) {
			FUNC10(&cq->qresume_tsk);
			FUNC7(adap, adap->fn, adap->fn, 0,
					cq->q.cntxt_id);
			FUNC1(&cq->sendq);
			FUNC4(adap, &cq->q);
		}
	}

	if (adap->sge.fw_evtq.desc)
		FUNC2(adap, &adap->sge.fw_evtq, NULL);

	if (adap->sge.intrq.desc)
		FUNC2(adap, &adap->sge.intrq, NULL);

	/* clear the reverse egress queue map */
	FUNC6(adap->sge.egr_map, 0, sizeof(adap->sge.egr_map));
}