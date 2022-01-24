#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_6__ {int sg_count; int /*<<< orphan*/  flags; scalar_t__ addr; int /*<<< orphan*/  callback; } ;
struct qib_verbs_txreq {scalar_t__ dwords; size_t hdr_inx; int hdr_dwords; TYPE_3__ txreq; struct qib_pio_header* align_buf; int /*<<< orphan*/ * mr; int /*<<< orphan*/  wqe; struct qib_qp* qp; struct qib_sge_state* ss; } ;
struct qib_sge_state {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct qib_qp {int /*<<< orphan*/ * s_rdma_mr; int /*<<< orphan*/  s_wqe; int /*<<< orphan*/  refcount; int /*<<< orphan*/  s_srate; struct qib_verbs_txreq* s_tx; int /*<<< orphan*/  port_num; TYPE_1__ ibqp; } ;
struct qib_pportdata {scalar_t__ sdma_descq_cnt; } ;
struct qib_pio_header {int /*<<< orphan*/  hdr; void** pbc; } ;
struct qib_ibport {int /*<<< orphan*/  n_unaligned; } ;
struct qib_ibdev {scalar_t__ pio_hdrs_phys; struct qib_pio_header* pio_hdrs; } ;
struct qib_ib_header {int /*<<< orphan*/ * lrh; } ;
struct qib_devdata {scalar_t__ (* f_setpbc_control ) (struct qib_pportdata*,scalar_t__,int /*<<< orphan*/ ,int) ;int flags; scalar_t__ piosize2kmax_dwords; TYPE_2__* pcidev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (struct qib_verbs_txreq*) ; 
 int FUNC1 (struct qib_verbs_txreq*) ; 
 int QIB_HAS_SDMA_TIMEOUT ; 
 int /*<<< orphan*/  QIB_SDMA_TXREQ_F_FREEBUF ; 
 int /*<<< orphan*/  QIB_SDMA_TXREQ_F_FREEDESC ; 
 int /*<<< orphan*/  QIB_SDMA_TXREQ_F_HEADTOHOST ; 
 int /*<<< orphan*/  QIB_SDMA_TXREQ_F_INTREQ ; 
 int /*<<< orphan*/  QIB_SDMA_TXREQ_F_USELARGEBUF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (scalar_t__) ; 
 struct qib_devdata* FUNC5 (struct qib_ibdev*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct qib_pio_header*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct qib_verbs_txreq* FUNC8 (struct qib_ibdev*,struct qib_qp*) ; 
 int /*<<< orphan*/  FUNC9 (struct qib_pio_header*) ; 
 struct qib_pio_header* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct qib_ib_header*,scalar_t__) ; 
 struct qib_pportdata* FUNC12 (struct qib_ibport*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*,struct qib_sge_state*,scalar_t__) ; 
 scalar_t__ FUNC14 (struct qib_sge_state*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct qib_verbs_txreq*) ; 
 int FUNC16 (struct qib_pportdata*,struct qib_sge_state*,scalar_t__,struct qib_verbs_txreq*) ; 
 int /*<<< orphan*/  sdma_complete ; 
 scalar_t__ FUNC17 (struct qib_pportdata*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 struct qib_ibdev* FUNC18 (int /*<<< orphan*/ ) ; 
 struct qib_ibport* FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct qib_ibdev*,struct qib_qp*) ; 

__attribute__((used)) static int FUNC21(struct qib_qp *qp, struct qib_ib_header *hdr,
			      u32 hdrwords, struct qib_sge_state *ss, u32 len,
			      u32 plen, u32 dwords)
{
	struct qib_ibdev *dev = FUNC18(qp->ibqp.device);
	struct qib_devdata *dd = FUNC5(dev);
	struct qib_ibport *ibp = FUNC19(qp->ibqp.device, qp->port_num);
	struct qib_pportdata *ppd = FUNC12(ibp);
	struct qib_verbs_txreq *tx;
	struct qib_pio_header *phdr;
	u32 control;
	u32 ndesc;
	int ret;

	tx = qp->s_tx;
	if (tx) {
		qp->s_tx = NULL;
		/* resend previously constructed packet */
		ret = FUNC16(ppd, tx->ss, tx->dwords, tx);
		goto bail;
	}

	tx = FUNC8(dev, qp);
	if (FUNC0(tx))
		goto bail_tx;

	control = dd->f_setpbc_control(ppd, plen, qp->s_srate,
				       FUNC3(hdr->lrh[0]) >> 12);
	tx->qp = qp;
	FUNC2(&qp->refcount);
	tx->wqe = qp->s_wqe;
	tx->mr = qp->s_rdma_mr;
	if (qp->s_rdma_mr)
		qp->s_rdma_mr = NULL;
	tx->txreq.callback = sdma_complete;
	if (dd->flags & QIB_HAS_SDMA_TIMEOUT)
		tx->txreq.flags = QIB_SDMA_TXREQ_F_HEADTOHOST;
	else
		tx->txreq.flags = QIB_SDMA_TXREQ_F_INTREQ;
	if (plen + 1 > dd->piosize2kmax_dwords)
		tx->txreq.flags |= QIB_SDMA_TXREQ_F_USELARGEBUF;

	if (len) {
		/*
		 * Don't try to DMA if it takes more descriptors than
		 * the queue holds.
		 */
		ndesc = FUNC14(ss, len);
		if (ndesc >= ppd->sdma_descq_cnt)
			ndesc = 0;
	} else
		ndesc = 1;
	if (ndesc) {
		phdr = &dev->pio_hdrs[tx->hdr_inx];
		phdr->pbc[0] = FUNC4(plen);
		phdr->pbc[1] = FUNC4(control);
		FUNC11(&phdr->hdr, hdr, hdrwords << 2);
		tx->txreq.flags |= QIB_SDMA_TXREQ_F_FREEDESC;
		tx->txreq.sg_count = ndesc;
		tx->txreq.addr = dev->pio_hdrs_phys +
			tx->hdr_inx * sizeof(struct qib_pio_header);
		tx->hdr_dwords = hdrwords + 2; /* add PBC length */
		ret = FUNC16(ppd, ss, dwords, tx);
		goto bail;
	}

	/* Allocate a buffer and copy the header and payload to it. */
	tx->hdr_dwords = plen + 1;
	phdr = FUNC10(tx->hdr_dwords << 2, GFP_ATOMIC);
	if (!phdr)
		goto err_tx;
	phdr->pbc[0] = FUNC4(plen);
	phdr->pbc[1] = FUNC4(control);
	FUNC11(&phdr->hdr, hdr, hdrwords << 2);
	FUNC13((u32 *) &phdr->hdr + hdrwords, ss, len);

	tx->txreq.addr = FUNC6(&dd->pcidev->dev, phdr,
					tx->hdr_dwords << 2, DMA_TO_DEVICE);
	if (FUNC7(&dd->pcidev->dev, tx->txreq.addr))
		goto map_err;
	tx->align_buf = phdr;
	tx->txreq.flags |= QIB_SDMA_TXREQ_F_FREEBUF;
	tx->txreq.sg_count = 1;
	ret = FUNC16(ppd, NULL, 0, tx);
	goto unaligned;

map_err:
	FUNC9(phdr);
err_tx:
	FUNC15(tx);
	ret = FUNC20(dev, qp);
unaligned:
	ibp->n_unaligned++;
bail:
	return ret;
bail_tx:
	ret = FUNC1(tx);
	goto bail;
}