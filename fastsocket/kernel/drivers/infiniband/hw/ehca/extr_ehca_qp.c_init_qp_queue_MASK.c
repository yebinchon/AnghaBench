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
typedef  void* u64 ;
struct ipz_queue {int dummy; } ;
struct ipz_adapter_handle {int dummy; } ;
struct ib_device {int dummy; } ;
struct ehca_shca {struct ipz_adapter_handle ipz_hca_handle; struct ib_device ib_device; } ;
struct TYPE_2__ {int /*<<< orphan*/  kernel; } ;
struct ehca_qp {struct ipz_queue ipz_rqueue; TYPE_1__ galpas; int /*<<< orphan*/  ipz_qp_handle; } ;
struct ehca_pd {int dummy; } ;
struct ehca_alloc_queue_parms {int queue_size; int page_size; scalar_t__ is_small; int /*<<< orphan*/  act_nr_sges; } ;

/* Variables and functions */
 int EBUSY ; 
 int EHCA_PAGESIZE ; 
 int EINVAL ; 
 void* H_PAGE_REGISTERED ; 
 int FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_device*,char*,void*) ; 
 void* FUNC2 (struct ipz_adapter_handle,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipz_queue*) ; 
 void* FUNC4 (struct ipz_queue*) ; 
 int FUNC5 (struct ehca_pd*,struct ipz_queue*,int,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ehca_pd*,struct ipz_queue*) ; 
 void* FUNC7 (void*) ; 

__attribute__((used)) static inline int FUNC8(struct ehca_shca *shca,
				struct ehca_pd *pd,
				struct ehca_qp *my_qp,
				struct ipz_queue *queue,
				int q_type,
				u64 expected_hret,
				struct ehca_alloc_queue_parms *parms,
				int wqe_size)
{
	int ret, cnt, ipz_rc, nr_q_pages;
	void *vpage;
	u64 rpage, h_ret;
	struct ib_device *ib_dev = &shca->ib_device;
	struct ipz_adapter_handle ipz_hca_handle = shca->ipz_hca_handle;

	if (!parms->queue_size)
		return 0;

	if (parms->is_small) {
		nr_q_pages = 1;
		ipz_rc = FUNC5(pd, queue, nr_q_pages,
					128 << parms->page_size,
					wqe_size, parms->act_nr_sges, 1);
	} else {
		nr_q_pages = parms->queue_size;
		ipz_rc = FUNC5(pd, queue, nr_q_pages,
					EHCA_PAGESIZE, wqe_size,
					parms->act_nr_sges, 0);
	}

	if (!ipz_rc) {
		FUNC1(ib_dev, "Cannot allocate page for queue. ipz_rc=%i",
			 ipz_rc);
		return -EBUSY;
	}

	/* register queue pages */
	for (cnt = 0; cnt < nr_q_pages; cnt++) {
		vpage = FUNC4(queue);
		if (!vpage) {
			FUNC1(ib_dev, "ipz_qpageit_get_inc() "
				 "failed p_vpage= %p", vpage);
			ret = -EINVAL;
			goto init_qp_queue1;
		}
		rpage = FUNC7(vpage);

		h_ret = FUNC2(ipz_hca_handle,
						 my_qp->ipz_qp_handle,
						 NULL, 0, q_type,
						 rpage, parms->is_small ? 0 : 1,
						 my_qp->galpas.kernel);
		if (cnt == (nr_q_pages - 1)) {	/* last page! */
			if (h_ret != expected_hret) {
				FUNC1(ib_dev, "hipz_qp_register_rpage() "
					 "h_ret=%lli", h_ret);
				ret = FUNC0(h_ret);
				goto init_qp_queue1;
			}
			vpage = FUNC4(&my_qp->ipz_rqueue);
			if (vpage) {
				FUNC1(ib_dev, "ipz_qpageit_get_inc() "
					 "should not succeed vpage=%p", vpage);
				ret = -EINVAL;
				goto init_qp_queue1;
			}
		} else {
			if (h_ret != H_PAGE_REGISTERED) {
				FUNC1(ib_dev, "hipz_qp_register_rpage() "
					 "h_ret=%lli", h_ret);
				ret = FUNC0(h_ret);
				goto init_qp_queue1;
			}
		}
	}

	FUNC3(queue);

	return 0;

init_qp_queue1:
	FUNC6(pd, queue);
	return ret;
}