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
struct net_device {int dummy; } ;
struct napi_struct {struct net_device* dev; } ;
struct enic {int /*<<< orphan*/ * intr; int /*<<< orphan*/ * rq; int /*<<< orphan*/ * cq; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct enic*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct enic*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 () ; 
 int /*<<< orphan*/  enic_rq_alloc_buf ; 
 int /*<<< orphan*/  enic_rq_service ; 
 int /*<<< orphan*/  enic_wq_service ; 
 int /*<<< orphan*/  FUNC3 (struct napi_struct*) ; 
 struct enic* FUNC4 (struct net_device*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct napi_struct *napi, int budget)
{
	struct net_device *netdev = napi->dev;
	struct enic *enic = FUNC4(netdev);
	unsigned int cq_rq = FUNC0(enic, 0);
	unsigned int cq_wq = FUNC1(enic, 0);
	unsigned int intr = FUNC2();
	unsigned int rq_work_to_do = budget;
	unsigned int wq_work_to_do = -1; /* no limit */
	unsigned int  work_done, rq_work_done, wq_work_done;
	int err;

	/* Service RQ (first) and WQ
	 */

	rq_work_done = FUNC5(&enic->cq[cq_rq],
		rq_work_to_do, enic_rq_service, NULL);

	wq_work_done = FUNC5(&enic->cq[cq_wq],
		wq_work_to_do, enic_wq_service, NULL);

	/* Accumulate intr event credits for this polling
	 * cycle.  An intr event is the completion of a
	 * a WQ or RQ packet.
	 */

	work_done = rq_work_done + wq_work_done;

	if (work_done > 0)
		FUNC6(&enic->intr[intr],
			work_done,
			0 /* don't unmask intr */,
			0 /* don't reset intr timer */);

	err = FUNC8(&enic->rq[0], enic_rq_alloc_buf);

	/* Buffer allocation failed. Stay in polling
	 * mode so we can try to fill the ring again.
	 */

	if (err)
		rq_work_done = rq_work_to_do;

	if (rq_work_done < rq_work_to_do) {

		/* Some work done, but not enough to stay in polling,
		 * exit polling
		 */

		FUNC3(napi);
		FUNC7(&enic->intr[intr]);
	}

	return rq_work_done;
}