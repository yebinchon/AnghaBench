#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct TYPE_5__ {struct sk_buff** arr; } ;
struct ehea_port_res {int sq_restart_flag; scalar_t__ swqe_refill_th; TYPE_2__* port; int /*<<< orphan*/  swqe_avail; TYPE_1__ sq_skba; struct ehea_cq* send_cq; } ;
struct ehea_cqe {scalar_t__ wr_id; int status; } ;
struct ehea_cq {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  swqe_avail_wq; struct ehea_port_res* port_res; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int EHEA_CQE_STAT_ERR_MASK ; 
 int EHEA_CQE_STAT_RESET_MASK ; 
 int EHEA_SWQE2_TYPE ; 
 int /*<<< orphan*/  EHEA_WR_ID_INDEX ; 
 int /*<<< orphan*/  EHEA_WR_ID_REFILL ; 
 int /*<<< orphan*/  EHEA_WR_ID_TYPE ; 
 scalar_t__ SWQE_RESTART_CHECK ; 
 int /*<<< orphan*/  FUNC1 (struct netdev_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct ehea_cqe*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct ehea_cq*) ; 
 struct ehea_cqe* FUNC9 (struct ehea_cq*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (struct ehea_cq*,int) ; 
 scalar_t__ FUNC12 (int) ; 
 struct netdev_queue* FUNC13 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 (TYPE_2__*) ; 
 scalar_t__ FUNC15 (TYPE_2__*) ; 
 scalar_t__ FUNC16 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC17 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 scalar_t__ FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ehea_cqe *FUNC22(struct ehea_port_res *pr, int my_quota)
{
	struct sk_buff *skb;
	struct ehea_cq *send_cq = pr->send_cq;
	struct ehea_cqe *cqe;
	int quota = my_quota;
	int cqe_counter = 0;
	int swqe_av = 0;
	int index;
	struct netdev_queue *txq = FUNC13(pr->port->netdev,
						pr - &pr->port->port_res[0]);

	cqe = FUNC9(send_cq);
	while (cqe && (quota > 0)) {
		FUNC8(send_cq);

		cqe_counter++;
		FUNC18();

		if (cqe->wr_id == SWQE_RESTART_CHECK) {
			pr->sq_restart_flag = 1;
			swqe_av++;
			break;
		}

		if (cqe->status & EHEA_CQE_STAT_ERR_MASK) {
			FUNC7("Bad send completion status=0x%04X",
				   cqe->status);

			if (FUNC15(pr->port))
				FUNC6(cqe, sizeof(*cqe), "Send CQE");

			if (cqe->status & EHEA_CQE_STAT_RESET_MASK) {
				FUNC7("Resetting port");
				FUNC10(pr->port);
				break;
			}
		}

		if (FUNC14(pr->port))
			FUNC6(cqe, sizeof(*cqe), "CQE");

		if (FUNC12(FUNC0(EHEA_WR_ID_TYPE, cqe->wr_id)
			   == EHEA_SWQE2_TYPE)) {

			index = FUNC0(EHEA_WR_ID_INDEX, cqe->wr_id);
			skb = pr->sq_skba.arr[index];
			FUNC5(skb);
			pr->sq_skba.arr[index] = NULL;
		}

		swqe_av += FUNC0(EHEA_WR_ID_REFILL, cqe->wr_id);
		quota--;

		cqe = FUNC9(send_cq);
	};

	FUNC11(send_cq, cqe_counter);
	FUNC3(swqe_av, &pr->swqe_avail);

	if (FUNC20(FUNC16(txq) &&
		     (FUNC4(&pr->swqe_avail) >= pr->swqe_refill_th))) {
		FUNC1(txq, FUNC19());
		if (FUNC16(txq) &&
		    (FUNC4(&pr->swqe_avail) >= pr->swqe_refill_th))
			FUNC17(txq);
		FUNC2(txq);
	}

	FUNC21(&pr->port->swqe_avail_wq);

	return cqe;
}