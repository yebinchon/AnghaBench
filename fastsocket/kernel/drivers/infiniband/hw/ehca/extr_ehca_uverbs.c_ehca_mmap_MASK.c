#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct vm_area_struct {int vm_pgoff; } ;
struct ib_uobject {struct ib_ucontext* context; } ;
struct ib_ucontext {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  qp_num; int /*<<< orphan*/  device; struct ib_uobject* uobject; } ;
struct TYPE_7__ {struct ib_uobject* uobject; } ;
struct ehca_qp {TYPE_4__ ib_qp; TYPE_3__ ib_srq; } ;
struct TYPE_6__ {int /*<<< orphan*/  device; TYPE_1__* uobject; } ;
struct ehca_cq {int /*<<< orphan*/  cq_number; TYPE_2__ ib_cq; } ;
struct TYPE_5__ {struct ib_ucontext* context; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ehca_qp*) ; 
 int /*<<< orphan*/  ehca_cq_idr ; 
 int /*<<< orphan*/  ehca_cq_idr_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (struct vm_area_struct*,struct ehca_cq*,int) ; 
 int FUNC4 (struct vm_area_struct*,struct ehca_qp*,int) ; 
 int /*<<< orphan*/  ehca_qp_idr ; 
 int /*<<< orphan*/  ehca_qp_idr_lock ; 
 void* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

int FUNC9(struct ib_ucontext *context, struct vm_area_struct *vma)
{
	u64 fileoffset = vma->vm_pgoff;
	u32 idr_handle = fileoffset & 0x1FFFFFF;
	u32 q_type = (fileoffset >> 27) & 0x1;	  /* CQ, QP,...        */
	u32 rsrc_type = (fileoffset >> 25) & 0x3; /* sq,rq,cmnd_window */
	u32 ret;
	struct ehca_cq *cq;
	struct ehca_qp *qp;
	struct ib_uobject *uobject;

	switch (q_type) {
	case  0: /* CQ */
		FUNC6(&ehca_cq_idr_lock);
		cq = FUNC5(&ehca_cq_idr, idr_handle);
		FUNC7(&ehca_cq_idr_lock);

		/* make sure this mmap really belongs to the authorized user */
		if (!cq)
			return -EINVAL;

		if (!cq->ib_cq.uobject || cq->ib_cq.uobject->context != context)
			return -EINVAL;

		ret = FUNC3(vma, cq, rsrc_type);
		if (FUNC8(ret)) {
			FUNC1(cq->ib_cq.device,
				 "ehca_mmap_cq() failed rc=%i cq_num=%x",
				 ret, cq->cq_number);
			return ret;
		}
		break;

	case 1: /* QP */
		FUNC6(&ehca_qp_idr_lock);
		qp = FUNC5(&ehca_qp_idr, idr_handle);
		FUNC7(&ehca_qp_idr_lock);

		/* make sure this mmap really belongs to the authorized user */
		if (!qp)
			return -EINVAL;

		uobject = FUNC0(qp) ? qp->ib_srq.uobject : qp->ib_qp.uobject;
		if (!uobject || uobject->context != context)
			return -EINVAL;

		ret = FUNC4(vma, qp, rsrc_type);
		if (FUNC8(ret)) {
			FUNC1(qp->ib_qp.device,
				 "ehca_mmap_qp() failed rc=%i qp_num=%x",
				 ret, qp->ib_qp.qp_num);
			return ret;
		}
		break;

	default:
		FUNC2("bad queue type %x", q_type);
		return -EINVAL;
	}

	return 0;
}