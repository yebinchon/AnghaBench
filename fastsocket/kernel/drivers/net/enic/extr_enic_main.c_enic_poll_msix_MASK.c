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
struct enic {int /*<<< orphan*/ * intr; int /*<<< orphan*/ * rq; int /*<<< orphan*/ * cq; struct napi_struct* napi; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct enic*,unsigned int) ; 
 unsigned int FUNC1 (struct enic*,unsigned int) ; 
 int /*<<< orphan*/  enic_rq_alloc_buf ; 
 int /*<<< orphan*/  enic_rq_service ; 
 int /*<<< orphan*/  FUNC2 (struct napi_struct*) ; 
 struct enic* FUNC3 (struct net_device*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct napi_struct *napi, int budget)
{
	struct net_device *netdev = napi->dev;
	struct enic *enic = FUNC3(netdev);
	unsigned int rq = (napi - &enic->napi[0]);
	unsigned int cq = FUNC0(enic, rq);
	unsigned int intr = FUNC1(enic, rq);
	unsigned int work_to_do = budget;
	unsigned int work_done;
	int err;

	/* Service RQ
	 */

	work_done = FUNC4(&enic->cq[cq],
		work_to_do, enic_rq_service, NULL);

	/* Return intr event credits for this polling
	 * cycle.  An intr event is the completion of a
	 * RQ packet.
	 */

	if (work_done > 0)
		FUNC5(&enic->intr[intr],
			work_done,
			0 /* don't unmask intr */,
			0 /* don't reset intr timer */);

	err = FUNC7(&enic->rq[rq], enic_rq_alloc_buf);

	/* Buffer allocation failed. Stay in polling mode
	 * so we can try to fill the ring again.
	 */

	if (err)
		work_done = work_to_do;

	if (work_done < work_to_do) {

		/* Some work done, but not enough to stay in polling,
		 * exit polling
		 */

		FUNC2(napi);
		FUNC6(&enic->intr[intr]);
	}

	return work_done;
}