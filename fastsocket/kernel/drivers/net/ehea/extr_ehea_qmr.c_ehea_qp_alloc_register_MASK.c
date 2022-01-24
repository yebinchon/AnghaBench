#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u64 ;
struct hw_queue {int dummy; } ;
struct ehea_qp {int /*<<< orphan*/  fw_handle; } ;
struct ehea_adapter {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  EHEA_PAGESIZE ; 
 int EIO ; 
 scalar_t__ H_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hw_queue*) ; 
 void* FUNC3 (struct hw_queue*) ; 
 int FUNC4 (struct hw_queue*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hw_queue*) ; 
 scalar_t__ FUNC6 (void*) ; 

__attribute__((used)) static int FUNC7(struct ehea_qp *qp, struct hw_queue *hw_queue,
			   int nr_pages, int wqe_size, int act_nr_sges,
			   struct ehea_adapter *adapter, int h_call_q_selector)
{
	u64 hret, rpage;
	int ret, cnt;
	void *vpage;

	ret = FUNC4(hw_queue, nr_pages, EHEA_PAGESIZE, wqe_size);
	if (ret)
		return ret;

	for (cnt = 0; cnt < nr_pages; cnt++) {
		vpage = FUNC3(hw_queue);
		if (!vpage) {
			FUNC0("hw_qpageit_get_inc failed");
			goto out_kill_hwq;
		}
		rpage = FUNC6(vpage);
		hret = FUNC1(adapter->handle,
					     0, h_call_q_selector,
					     qp->fw_handle, rpage, 1);
		if (hret < H_SUCCESS) {
			FUNC0("register_rpage_qp failed");
			goto out_kill_hwq;
		}
	}
	FUNC2(hw_queue);
	return 0;

out_kill_hwq:
	FUNC5(hw_queue);
	return -EIO;
}