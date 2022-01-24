#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_13__ ;
typedef  struct TYPE_16__   TYPE_12__ ;
typedef  struct TYPE_15__   TYPE_11__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_25__ {int /*<<< orphan*/  interface_id; int /*<<< orphan*/  subnet_prefix; } ;
struct TYPE_26__ {TYPE_8__ global; } ;
struct TYPE_14__ {TYPE_9__ dgid; int /*<<< orphan*/  sgid_index; } ;
struct TYPE_16__ {int ah_flags; int dlid; TYPE_10__ grh; } ;
struct TYPE_15__ {int /*<<< orphan*/  qp_num; } ;
struct TYPE_18__ {int /*<<< orphan*/  interface_id; int /*<<< orphan*/  subnet_prefix; } ;
struct TYPE_19__ {TYPE_1__ global; } ;
struct TYPE_20__ {TYPE_2__ dgid; int /*<<< orphan*/  sgid_index; } ;
struct TYPE_21__ {int ah_flags; int dlid; scalar_t__ port_num; TYPE_3__ grh; } ;
struct qib_qp {scalar_t__ s_mig_state; scalar_t__ port_num; TYPE_12__ remote_ah_attr; TYPE_11__ ibqp; int /*<<< orphan*/  s_pkey_index; int /*<<< orphan*/  s_lock; TYPE_4__ alt_ah_attr; int /*<<< orphan*/  s_alt_pkey_index; } ;
struct qib_ibport {int /*<<< orphan*/  gid_prefix; } ;
struct TYPE_22__ {int /*<<< orphan*/  sgid; int /*<<< orphan*/  dgid; } ;
struct TYPE_23__ {TYPE_5__ grh; } ;
struct TYPE_24__ {TYPE_6__ l; } ;
struct qib_ib_header {int /*<<< orphan*/ * lrh; TYPE_7__ u; } ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_17__ {scalar_t__ port; } ;

/* Variables and functions */
 int IB_AH_GRH ; 
 int IB_BTH_MIG_REQ ; 
 scalar_t__ IB_MIG_ARMED ; 
 scalar_t__ IB_MIG_REARM ; 
 int /*<<< orphan*/  IB_NOTICE_TRAP_BAD_PKEY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_ibport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_13__* FUNC3 (struct qib_ibport*) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_ibport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qib_ibport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qib_qp*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC10(struct qib_ibport *ibp, struct qib_ib_header *hdr,
		      int has_grh, struct qib_qp *qp, u32 bth0)
{
	__be64 guid;
	unsigned long flags;

	if (qp->s_mig_state == IB_MIG_ARMED && (bth0 & IB_BTH_MIG_REQ)) {
		if (!has_grh) {
			if (qp->alt_ah_attr.ah_flags & IB_AH_GRH)
				goto err;
		} else {
			if (!(qp->alt_ah_attr.ah_flags & IB_AH_GRH))
				goto err;
			guid = FUNC1(ibp, qp->alt_ah_attr.grh.sgid_index);
			if (!FUNC2(&hdr->u.l.grh.dgid, ibp->gid_prefix, guid))
				goto err;
			if (!FUNC2(&hdr->u.l.grh.sgid,
			    qp->alt_ah_attr.grh.dgid.global.subnet_prefix,
			    qp->alt_ah_attr.grh.dgid.global.interface_id))
				goto err;
		}
		if (!FUNC7((u16)bth0,
				 FUNC5(ibp, qp->s_alt_pkey_index))) {
			FUNC4(ibp, IB_NOTICE_TRAP_BAD_PKEY,
				      (u16)bth0,
				      (FUNC0(hdr->lrh[0]) >> 4) & 0xF,
				      0, qp->ibqp.qp_num,
				      hdr->lrh[3], hdr->lrh[1]);
			goto err;
		}
		/* Validate the SLID. See Ch. 9.6.1.5 and 17.2.8 */
		if (FUNC0(hdr->lrh[3]) != qp->alt_ah_attr.dlid ||
		    FUNC3(ibp)->port != qp->alt_ah_attr.port_num)
			goto err;
		FUNC8(&qp->s_lock, flags);
		FUNC6(qp);
		FUNC9(&qp->s_lock, flags);
	} else {
		if (!has_grh) {
			if (qp->remote_ah_attr.ah_flags & IB_AH_GRH)
				goto err;
		} else {
			if (!(qp->remote_ah_attr.ah_flags & IB_AH_GRH))
				goto err;
			guid = FUNC1(ibp,
					 qp->remote_ah_attr.grh.sgid_index);
			if (!FUNC2(&hdr->u.l.grh.dgid, ibp->gid_prefix, guid))
				goto err;
			if (!FUNC2(&hdr->u.l.grh.sgid,
			    qp->remote_ah_attr.grh.dgid.global.subnet_prefix,
			    qp->remote_ah_attr.grh.dgid.global.interface_id))
				goto err;
		}
		if (!FUNC7((u16)bth0,
				 FUNC5(ibp, qp->s_pkey_index))) {
			FUNC4(ibp, IB_NOTICE_TRAP_BAD_PKEY,
				      (u16)bth0,
				      (FUNC0(hdr->lrh[0]) >> 4) & 0xF,
				      0, qp->ibqp.qp_num,
				      hdr->lrh[3], hdr->lrh[1]);
			goto err;
		}
		/* Validate the SLID. See Ch. 9.6.1.5 */
		if (FUNC0(hdr->lrh[3]) != qp->remote_ah_attr.dlid ||
		    FUNC3(ibp)->port != qp->port_num)
			goto err;
		if (qp->s_mig_state == IB_MIG_REARM &&
		    !(bth0 & IB_BTH_MIG_REQ))
			qp->s_mig_state = IB_MIG_ARMED;
	}

	return 0;

err:
	return 1;
}