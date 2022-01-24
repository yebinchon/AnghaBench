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
typedef  int u64 ;
struct ipz_queue {int qe_size; } ;
struct TYPE_2__ {int /*<<< orphan*/  imm_data; } ;
struct ib_wc {int /*<<< orphan*/ * qp; int /*<<< orphan*/  status; int /*<<< orphan*/  wc_flags; TYPE_1__ ex; int /*<<< orphan*/  opcode; int /*<<< orphan*/  wr_id; } ;
struct ib_cq {int /*<<< orphan*/  device; } ;
struct ehca_wqe {int optype; int wr_flag; int /*<<< orphan*/  immediate_data; int /*<<< orphan*/  work_request_id; } ;
struct ehca_queue_map {size_t next_wqe_idx; struct ehca_qmap_entry* map; int /*<<< orphan*/  entries; } ;
struct ehca_qp {int /*<<< orphan*/  ib_qp; int /*<<< orphan*/  real_qp_num; struct ehca_queue_map rq_map; struct ehca_queue_map sq_map; } ;
struct ehca_qmap_entry {int reported; int /*<<< orphan*/  app_wr_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_WC_RDMA_READ ; 
 int /*<<< orphan*/  IB_WC_RDMA_WRITE ; 
 int /*<<< orphan*/  IB_WC_RECV ; 
 int /*<<< orphan*/  IB_WC_SEND ; 
 int /*<<< orphan*/  IB_WC_WITH_IMM ; 
 int /*<<< orphan*/  IB_WC_WR_FLUSH_ERR ; 
#define  WQE_OPTYPE_RDMAREAD 130 
#define  WQE_OPTYPE_RDMAWRITE 129 
#define  WQE_OPTYPE_SEND 128 
 int WQE_WRFLAG_IMM_DATA_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 scalar_t__ FUNC1 (struct ipz_queue*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_wc*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ehca_qp *my_qp, struct ib_cq *cq,
			       struct ib_wc *wc, int num_entries,
			       struct ipz_queue *ipz_queue, int on_sq)
{
	int nr = 0;
	struct ehca_wqe *wqe;
	u64 offset;
	struct ehca_queue_map *qmap;
	struct ehca_qmap_entry *qmap_entry;

	if (on_sq)
		qmap = &my_qp->sq_map;
	else
		qmap = &my_qp->rq_map;

	qmap_entry = &qmap->map[qmap->next_wqe_idx];

	while ((nr < num_entries) && (qmap_entry->reported == 0)) {
		/* generate flush CQE */

		FUNC2(wc, 0, sizeof(*wc));

		offset = qmap->next_wqe_idx * ipz_queue->qe_size;
		wqe = (struct ehca_wqe *)FUNC1(ipz_queue, offset);
		if (!wqe) {
			FUNC0(cq->device, "Invalid wqe offset=%#llx on "
				 "qp_num=%#x", offset, my_qp->real_qp_num);
			return nr;
		}

		wc->wr_id = FUNC4(wqe->work_request_id,
					  qmap_entry->app_wr_id);

		if (on_sq) {
			switch (wqe->optype) {
			case WQE_OPTYPE_SEND:
				wc->opcode = IB_WC_SEND;
				break;
			case WQE_OPTYPE_RDMAWRITE:
				wc->opcode = IB_WC_RDMA_WRITE;
				break;
			case WQE_OPTYPE_RDMAREAD:
				wc->opcode = IB_WC_RDMA_READ;
				break;
			default:
				FUNC0(cq->device, "Invalid optype=%x",
						wqe->optype);
				return nr;
			}
		} else
			wc->opcode = IB_WC_RECV;

		if (wqe->wr_flag & WQE_WRFLAG_IMM_DATA_PRESENT) {
			wc->ex.imm_data = wqe->immediate_data;
			wc->wc_flags |= IB_WC_WITH_IMM;
		}

		wc->status = IB_WC_WR_FLUSH_ERR;

		wc->qp = &my_qp->ib_qp;

		/* mark as reported and advance next_wqe pointer */
		qmap_entry->reported = 1;
		qmap->next_wqe_idx = FUNC3(qmap->next_wqe_idx,
						qmap->entries);
		qmap_entry = &qmap->map[qmap->next_wqe_idx];

		wc++; nr++;
	}

	return nr;

}