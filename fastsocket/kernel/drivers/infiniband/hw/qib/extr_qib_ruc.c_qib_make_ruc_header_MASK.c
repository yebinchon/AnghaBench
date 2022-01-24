#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_11__ {int ah_flags; size_t sl; int dlid; int src_path_bits; int /*<<< orphan*/  grh; } ;
struct TYPE_7__ {int /*<<< orphan*/  device; } ;
struct qib_qp {int s_cur_size; scalar_t__ s_mig_state; int remote_qpn; int /*<<< orphan*/  s_pkey_index; TYPE_5__ remote_ah_attr; TYPE_4__* s_hdr; int /*<<< orphan*/  s_hdrwords; int /*<<< orphan*/  port_num; TYPE_1__ ibqp; } ;
struct qib_other_headers {void** bth; } ;
struct qib_ibport {int* sl_to_vl; } ;
struct TYPE_12__ {int lid; } ;
struct TYPE_8__ {int /*<<< orphan*/  grh; } ;
struct TYPE_9__ {TYPE_2__ l; } ;
struct TYPE_10__ {void** lrh; TYPE_3__ u; } ;

/* Variables and functions */
 int IB_AH_GRH ; 
 int IB_BTH_MIG_REQ ; 
 scalar_t__ IB_MIG_MIGRATED ; 
 int QIB_LRH_BTH ; 
 int QIB_LRH_GRH ; 
 int SIZE_OF_CRC ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 TYPE_6__* FUNC2 (struct qib_ibport*) ; 
 int FUNC3 (struct qib_ibport*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct qib_ibport*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct qib_ibport* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

void FUNC7(struct qib_qp *qp, struct qib_other_headers *ohdr,
			 u32 bth0, u32 bth2)
{
	struct qib_ibport *ibp = FUNC5(qp->ibqp.device, qp->port_num);
	u16 lrh0;
	u32 nwords;
	u32 extra_bytes;

	/* Construct the header. */
	extra_bytes = -qp->s_cur_size & 3;
	nwords = (qp->s_cur_size + extra_bytes) >> 2;
	lrh0 = QIB_LRH_BTH;
	if (FUNC6(qp->remote_ah_attr.ah_flags & IB_AH_GRH)) {
		qp->s_hdrwords += FUNC4(ibp, &qp->s_hdr->u.l.grh,
					       &qp->remote_ah_attr.grh,
					       qp->s_hdrwords, nwords);
		lrh0 = QIB_LRH_GRH;
	}
	lrh0 |= ibp->sl_to_vl[qp->remote_ah_attr.sl] << 12 |
		qp->remote_ah_attr.sl << 4;
	qp->s_hdr->lrh[0] = FUNC0(lrh0);
	qp->s_hdr->lrh[1] = FUNC0(qp->remote_ah_attr.dlid);
	qp->s_hdr->lrh[2] = FUNC0(qp->s_hdrwords + nwords + SIZE_OF_CRC);
	qp->s_hdr->lrh[3] = FUNC0(FUNC2(ibp)->lid |
				       qp->remote_ah_attr.src_path_bits);
	bth0 |= FUNC3(ibp, qp->s_pkey_index);
	bth0 |= extra_bytes << 20;
	if (qp->s_mig_state == IB_MIG_MIGRATED)
		bth0 |= IB_BTH_MIG_REQ;
	ohdr->bth[0] = FUNC1(bth0);
	ohdr->bth[1] = FUNC1(qp->remote_qpn);
	ohdr->bth[2] = FUNC1(bth2);
}