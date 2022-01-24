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
typedef  int u64 ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct ehea_rwqe {int wr_id; int data_segments; TYPE_3__* sg_list; } ;
struct ehea_qp {int dummy; } ;
struct ehea_q_skb_arr {int os_skbs; int index; int len; struct sk_buff** arr; } ;
struct TYPE_5__ {int /*<<< orphan*/  lkey; } ;
struct ehea_port_res {struct ehea_qp* qp; TYPE_2__ recv_mr; TYPE_1__* port; } ;
struct TYPE_6__ {int vaddr; int len; int /*<<< orphan*/  l_key; } ;
struct TYPE_4__ {struct net_device* netdev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  EHEA_WR_ID_INDEX ; 
 int /*<<< orphan*/  EHEA_WR_ID_TYPE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NET_IP_ALIGN ; 
 int /*<<< orphan*/  __EHEA_STOP_XFER ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  ehea_driver_flags ; 
 struct ehea_rwqe* FUNC2 (struct ehea_qp*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ehea_qp*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ehea_qp*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct sk_buff* FUNC8 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct ehea_port_res *pr,
			      struct ehea_q_skb_arr *q_skba, int rq_nr,
			      int num_wqes, int wqe_type, int packet_size)
{
	struct net_device *dev = pr->port->netdev;
	struct ehea_qp *qp = pr->qp;
	struct sk_buff **skb_arr = q_skba->arr;
	struct ehea_rwqe *rwqe;
	int i, index, max_index_mask, fill_wqes;
	int adder = 0;
	int ret = 0;

	fill_wqes = q_skba->os_skbs + num_wqes;
	q_skba->os_skbs = 0;

	if (FUNC11(FUNC10(__EHEA_STOP_XFER, &ehea_driver_flags))) {
		q_skba->os_skbs = fill_wqes;
		return ret;
	}

	index = q_skba->index;
	max_index_mask = q_skba->len - 1;
	for (i = 0; i < fill_wqes; i++) {
		u64 tmp_addr;
		struct sk_buff *skb = FUNC8(dev, packet_size);
		if (!skb) {
			q_skba->os_skbs = fill_wqes - i;
			if (q_skba->os_skbs == q_skba->len - 2) {
				FUNC3("%s: rq%i ran dry - no mem for skb",
					  pr->port->netdev->name, rq_nr);
				ret = -ENOMEM;
			}
			break;
		}
		FUNC9(skb, NET_IP_ALIGN);

		skb_arr[index] = skb;
		tmp_addr = FUNC4(skb->data);
		if (tmp_addr == -1) {
			FUNC1(skb);
			q_skba->os_skbs = fill_wqes - i;
			ret = 0;
			break;
		}

		rwqe = FUNC2(qp, rq_nr);
		rwqe->wr_id = FUNC0(EHEA_WR_ID_TYPE, wqe_type)
			    | FUNC0(EHEA_WR_ID_INDEX, index);
		rwqe->sg_list[0].l_key = pr->recv_mr.lkey;
		rwqe->sg_list[0].vaddr = tmp_addr;
		rwqe->sg_list[0].len = packet_size;
		rwqe->data_segments = 1;

		index++;
		index &= max_index_mask;
		adder++;
	}

	q_skba->index = index;
	if (adder == 0)
		goto out;

	/* Ring doorbell */
	FUNC7();
	if (rq_nr == 2)
		FUNC5(pr->qp, adder);
	else
		FUNC6(pr->qp, adder);
out:
	return ret;
}