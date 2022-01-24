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
struct TYPE_4__ {int /*<<< orphan*/  isgl; } ;
union t4_recv_wr {TYPE_1__ recv; } ;
typedef  int /*<<< orphan*/  u8 ;
struct ib_recv_wr {int num_sge; int /*<<< orphan*/  sg_list; } ;
struct fw_ri_sge {int dummy; } ;
struct TYPE_5__ {size_t size; int /*<<< orphan*/ * queue; } ;
struct TYPE_6__ {TYPE_2__ rq; } ;
struct c4iw_qp {TYPE_3__ wq; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct c4iw_qp *qhp, union t4_recv_wr *wqe,
			   struct ib_recv_wr *wr, u8 *len16)
{
	int ret;

	ret = FUNC1((__be64 *)qhp->wq.rq.queue,
			 (__be64 *)&qhp->wq.rq.queue[qhp->wq.rq.size],
			 &wqe->recv.isgl, wr->sg_list, wr->num_sge, NULL);
	if (ret)
		return ret;
	*len16 = FUNC0(sizeof wqe->recv +
			      wr->num_sge * sizeof(struct fw_ri_sge), 16);
	return 0;
}