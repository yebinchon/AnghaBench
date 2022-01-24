#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_18__ {scalar_t__ remote_qkey; int /*<<< orphan*/  pkey_index; int /*<<< orphan*/  ah; int /*<<< orphan*/  remote_qpn; } ;
struct TYPE_19__ {TYPE_7__ ud; } ;
struct TYPE_13__ {int /*<<< orphan*/  imm_data; } ;
struct TYPE_20__ {scalar_t__ opcode; int send_flags; TYPE_8__ wr; scalar_t__ num_sge; TYPE_2__ ex; } ;
struct qib_swqe {scalar_t__ length; TYPE_9__ wr; struct qib_sge* sg_list; } ;
struct qib_sge {scalar_t__ length; scalar_t__ sge_length; scalar_t__ n; scalar_t__ m; TYPE_5__* mr; int /*<<< orphan*/ * vaddr; } ;
struct qib_sge_state {struct qib_sge* sg_list; scalar_t__ num_sge; struct qib_sge sge; } ;
struct TYPE_17__ {scalar_t__ qp_type; int qp_num; int /*<<< orphan*/  recv_cq; int /*<<< orphan*/  device; } ;
struct qib_qp {size_t state; scalar_t__ qkey; int r_flags; scalar_t__ r_len; int /*<<< orphan*/  wait; int /*<<< orphan*/  refcount; int /*<<< orphan*/  r_lock; TYPE_6__ ibqp; int /*<<< orphan*/  port_num; int /*<<< orphan*/  r_wr_id; int /*<<< orphan*/  r_aflags; int /*<<< orphan*/  r_sge; int /*<<< orphan*/  s_pkey_index; } ;
struct qib_pportdata {int lid; int lmc; } ;
struct qib_ibport {int /*<<< orphan*/  n_loop_pkts; int /*<<< orphan*/  n_pkt_drops; int /*<<< orphan*/  n_vl15_dropped; } ;
struct TYPE_12__ {int /*<<< orphan*/  imm_data; } ;
struct ib_wc {scalar_t__ byte_len; int src_qp; int slid; int dlid_path_bits; int /*<<< orphan*/  port_num; int /*<<< orphan*/  sl; int /*<<< orphan*/  pkey_index; TYPE_6__* qp; int /*<<< orphan*/  opcode; int /*<<< orphan*/  status; int /*<<< orphan*/  wr_id; int /*<<< orphan*/  wc_flags; TYPE_1__ ex; } ;
struct ib_grh {int dummy; } ;
struct ib_ah_attr {int src_path_bits; scalar_t__ dlid; int ah_flags; int /*<<< orphan*/  sl; int /*<<< orphan*/  grh; } ;
struct TYPE_16__ {scalar_t__ mapsz; TYPE_4__** map; scalar_t__ lkey; } ;
struct TYPE_15__ {TYPE_3__* segs; } ;
struct TYPE_14__ {scalar_t__ length; int /*<<< orphan*/ * vaddr; } ;
struct TYPE_11__ {struct ib_ah_attr attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IB_AH_GRH ; 
 int /*<<< orphan*/  IB_NOTICE_TRAP_BAD_PKEY ; 
 int /*<<< orphan*/  IB_NOTICE_TRAP_BAD_QKEY ; 
 scalar_t__ IB_QPT_GSI ; 
 int IB_SEND_SOLICITED ; 
 int /*<<< orphan*/  IB_WC_GRH ; 
 int /*<<< orphan*/  IB_WC_LOC_QP_OP_ERR ; 
 int /*<<< orphan*/  IB_WC_RECV ; 
 int /*<<< orphan*/  IB_WC_SUCCESS ; 
 int /*<<< orphan*/  IB_WC_WITH_IMM ; 
 scalar_t__ IB_WR_SEND_WITH_IMM ; 
 int QIB_PROCESS_RECV_OK ; 
 int QIB_R_REUSE_SGE ; 
 int /*<<< orphan*/  QIB_R_WRID_VALID ; 
 scalar_t__ QIB_SEGSZ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int* ib_qib_state_ops ; 
 int /*<<< orphan*/  FUNC3 (struct ib_wc*,int /*<<< orphan*/ ,int) ; 
 struct qib_pportdata* FUNC4 (struct qib_ibport*) ; 
 int /*<<< orphan*/  FUNC5 (struct qib_ibport*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct ib_wc*,int) ; 
 scalar_t__ FUNC8 (struct qib_ibport*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct qib_qp*,int /*<<< orphan*/ ) ; 
 struct qib_qp* FUNC10 (struct qib_ibport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct qib_qp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_10__* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 struct qib_ibport* FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC23(struct qib_qp *sqp, struct qib_swqe *swqe)
{
	struct qib_ibport *ibp = FUNC20(sqp->ibqp.device, sqp->port_num);
	struct qib_pportdata *ppd;
	struct qib_qp *qp;
	struct ib_ah_attr *ah_attr;
	unsigned long flags;
	struct qib_sge_state ssge;
	struct qib_sge *sge;
	struct ib_wc wc;
	u32 length;

	qp = FUNC10(ibp, swqe->wr.wr.ud.remote_qpn);
	if (!qp) {
		ibp->n_pkt_drops++;
		return;
	}
	if (qp->ibqp.qp_type != sqp->ibqp.qp_type ||
	    !(ib_qib_state_ops[qp->state] & QIB_PROCESS_RECV_OK)) {
		ibp->n_pkt_drops++;
		goto drop;
	}

	ah_attr = &FUNC18(swqe->wr.wr.ud.ah)->attr;
	ppd = FUNC4(ibp);

	if (qp->ibqp.qp_num > 1) {
		u16 pkey1;
		u16 pkey2;
		u16 lid;

		pkey1 = FUNC8(ibp, sqp->s_pkey_index);
		pkey2 = FUNC8(ibp, qp->s_pkey_index);
		if (FUNC21(!FUNC11(pkey1, pkey2))) {
			lid = ppd->lid | (ah_attr->src_path_bits &
					  ((1 << ppd->lmc) - 1));
			FUNC5(ibp, IB_NOTICE_TRAP_BAD_PKEY, pkey1,
				      ah_attr->sl,
				      sqp->ibqp.qp_num, qp->ibqp.qp_num,
				      FUNC2(lid),
				      FUNC2(ah_attr->dlid));
			goto drop;
		}
	}

	/*
	 * Check that the qkey matches (except for QP0, see 9.6.1.4.1).
	 * Qkeys with the high order bit set mean use the
	 * qkey from the QP context instead of the WR (see 10.2.5).
	 */
	if (qp->ibqp.qp_num) {
		u32 qkey;

		qkey = (int)swqe->wr.wr.ud.remote_qkey < 0 ?
			sqp->qkey : swqe->wr.wr.ud.remote_qkey;
		if (FUNC21(qkey != qp->qkey)) {
			u16 lid;

			lid = ppd->lid | (ah_attr->src_path_bits &
					  ((1 << ppd->lmc) - 1));
			FUNC5(ibp, IB_NOTICE_TRAP_BAD_QKEY, qkey,
				      ah_attr->sl,
				      sqp->ibqp.qp_num, qp->ibqp.qp_num,
				      FUNC2(lid),
				      FUNC2(ah_attr->dlid));
			goto drop;
		}
	}

	/*
	 * A GRH is expected to precede the data even if not
	 * present on the wire.
	 */
	length = swqe->length;
	FUNC3(&wc, 0, sizeof wc);
	wc.byte_len = length + sizeof(struct ib_grh);

	if (swqe->wr.opcode == IB_WR_SEND_WITH_IMM) {
		wc.wc_flags = IB_WC_WITH_IMM;
		wc.ex.imm_data = swqe->wr.ex.imm_data;
	}

	FUNC15(&qp->r_lock, flags);

	/*
	 * Get the next work request entry to find where to put the data.
	 */
	if (qp->r_flags & QIB_R_REUSE_SGE)
		qp->r_flags &= ~QIB_R_REUSE_SGE;
	else {
		int ret;

		ret = FUNC9(qp, 0);
		if (ret < 0) {
			FUNC13(qp, IB_WC_LOC_QP_OP_ERR);
			goto bail_unlock;
		}
		if (!ret) {
			if (qp->ibqp.qp_num == 0)
				ibp->n_vl15_dropped++;
			goto bail_unlock;
		}
	}
	/* Silently drop packets which are too big. */
	if (FUNC21(wc.byte_len > qp->r_len)) {
		qp->r_flags |= QIB_R_REUSE_SGE;
		ibp->n_pkt_drops++;
		goto bail_unlock;
	}

	if (ah_attr->ah_flags & IB_AH_GRH) {
		FUNC6(&qp->r_sge, &ah_attr->grh,
			     sizeof(struct ib_grh), 1);
		wc.wc_flags |= IB_WC_GRH;
	} else
		FUNC14(&qp->r_sge, sizeof(struct ib_grh), 1);
	ssge.sg_list = swqe->sg_list + 1;
	ssge.sge = *swqe->sg_list;
	ssge.num_sge = swqe->wr.num_sge;
	sge = &ssge.sge;
	while (length) {
		u32 len = sge->length;

		if (len > length)
			len = length;
		if (len > sge->sge_length)
			len = sge->sge_length;
		FUNC0(len == 0);
		FUNC6(&qp->r_sge, sge->vaddr, len, 1);
		sge->vaddr += len;
		sge->length -= len;
		sge->sge_length -= len;
		if (sge->sge_length == 0) {
			if (--ssge.num_sge)
				*sge = *ssge.sg_list++;
		} else if (sge->length == 0 && sge->mr->lkey) {
			if (++sge->n >= QIB_SEGSZ) {
				if (++sge->m >= sge->mr->mapsz)
					break;
				sge->n = 0;
			}
			sge->vaddr =
				sge->mr->map[sge->m]->segs[sge->n].vaddr;
			sge->length =
				sge->mr->map[sge->m]->segs[sge->n].length;
		}
		length -= len;
	}
	FUNC12(&qp->r_sge);
	if (!FUNC17(QIB_R_WRID_VALID, &qp->r_aflags))
		goto bail_unlock;
	wc.wr_id = qp->r_wr_id;
	wc.status = IB_WC_SUCCESS;
	wc.opcode = IB_WC_RECV;
	wc.qp = &qp->ibqp;
	wc.src_qp = sqp->ibqp.qp_num;
	wc.pkey_index = qp->ibqp.qp_type == IB_QPT_GSI ?
		swqe->wr.wr.ud.pkey_index : 0;
	wc.slid = ppd->lid | (ah_attr->src_path_bits & ((1 << ppd->lmc) - 1));
	wc.sl = ah_attr->sl;
	wc.dlid_path_bits = ah_attr->dlid & ((1 << ppd->lmc) - 1);
	wc.port_num = qp->port_num;
	/* Signal completion event if the solicited bit is set. */
	FUNC7(FUNC19(qp->ibqp.recv_cq), &wc,
		     swqe->wr.send_flags & IB_SEND_SOLICITED);
	ibp->n_loop_pkts++;
bail_unlock:
	FUNC16(&qp->r_lock, flags);
drop:
	if (FUNC1(&qp->refcount))
		FUNC22(&qp->wait);
}