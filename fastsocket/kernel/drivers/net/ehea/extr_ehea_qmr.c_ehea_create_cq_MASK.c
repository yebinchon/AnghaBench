#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct h_epa {int dummy; } ;
struct ehea_cqe {int dummy; } ;
struct TYPE_4__ {struct h_epa kernel; } ;
struct TYPE_3__ {int max_nr_of_cqes; int cq_token; int nr_pages; int /*<<< orphan*/  eq_handle; } ;
struct ehea_cq {int /*<<< orphan*/  fw_handle; int /*<<< orphan*/  hw_queue; TYPE_2__ epas; TYPE_1__ attr; struct ehea_adapter* adapter; } ;
struct ehea_adapter {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  EHEA_CQ_REGISTER_ORIG ; 
 int /*<<< orphan*/  EHEA_PAGESIZE ; 
 int /*<<< orphan*/  FORCE_FREE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  H_PAGE_REGISTERED ; 
 int /*<<< orphan*/  H_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ehea_cq*) ; 
 int /*<<< orphan*/  FUNC5 (struct ehea_cq*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ehea_cq*) ; 
 struct ehea_cq* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 

struct ehea_cq *FUNC13(struct ehea_adapter *adapter,
			       int nr_of_cqe, u64 eq_handle, u32 cq_token)
{
	struct ehea_cq *cq;
	struct h_epa epa;
	u64 *cq_handle_ref, hret, rpage;
	u32 act_nr_of_entries, act_pages, counter;
	int ret;
	void *vpage;

	cq = FUNC11(sizeof(*cq), GFP_KERNEL);
	if (!cq) {
		FUNC0("no mem for cq");
		goto out_nomem;
	}

	cq->attr.max_nr_of_cqes = nr_of_cqe;
	cq->attr.cq_token = cq_token;
	cq->attr.eq_handle = eq_handle;

	cq->adapter = adapter;

	cq_handle_ref = &cq->fw_handle;
	act_nr_of_entries = 0;
	act_pages = 0;

	hret = FUNC1(adapter->handle, &cq->attr,
					&cq->fw_handle, &cq->epas);
	if (hret != H_SUCCESS) {
		FUNC0("alloc_resource_cq failed");
		goto out_freemem;
	}

	ret = FUNC8(&cq->hw_queue, cq->attr.nr_pages,
			    EHEA_PAGESIZE, sizeof(struct ehea_cqe));
	if (ret)
		goto out_freeres;

	for (counter = 0; counter < cq->attr.nr_pages; counter++) {
		vpage = FUNC7(&cq->hw_queue);
		if (!vpage) {
			FUNC0("hw_qpageit_get_inc failed");
			goto out_kill_hwq;
		}

		rpage = FUNC12(vpage);
		hret = FUNC3(adapter->handle,
					     0, EHEA_CQ_REGISTER_ORIG,
					     cq->fw_handle, rpage, 1);
		if (hret < H_SUCCESS) {
			FUNC0("register_rpage_cq failed ehea_cq=%p "
				   "hret=%llx counter=%i act_pages=%i",
				   cq, hret, counter, cq->attr.nr_pages);
			goto out_kill_hwq;
		}

		if (counter == (cq->attr.nr_pages - 1)) {
			vpage = FUNC7(&cq->hw_queue);

			if ((hret != H_SUCCESS) || (vpage)) {
				FUNC0("registration of pages not "
					   "complete hret=%llx\n", hret);
				goto out_kill_hwq;
			}
		} else {
			if (hret != H_PAGE_REGISTERED) {
				FUNC0("CQ: registration of page failed "
					   "hret=%llx\n", hret);
				goto out_kill_hwq;
			}
		}
	}

	FUNC6(&cq->hw_queue);
	epa = cq->epas.kernel;
	FUNC4(cq);
	FUNC5(cq);

	return cq;

out_kill_hwq:
	FUNC9(&cq->hw_queue);

out_freeres:
	FUNC2(adapter->handle, cq->fw_handle, FORCE_FREE);

out_freemem:
	FUNC10(cq);

out_nomem:
	return NULL;
}