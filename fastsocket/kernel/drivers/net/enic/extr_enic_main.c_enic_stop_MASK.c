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
struct enic {unsigned int intr_count; unsigned int rq_count; unsigned int wq_count; unsigned int cq_count; int /*<<< orphan*/ * intr; int /*<<< orphan*/ * cq; int /*<<< orphan*/ * rq; int /*<<< orphan*/ * wq; int /*<<< orphan*/ * napi; int /*<<< orphan*/  notify_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct enic*) ; 
 int /*<<< orphan*/  FUNC2 (struct enic*) ; 
 int /*<<< orphan*/  FUNC3 (struct enic*) ; 
 int /*<<< orphan*/  FUNC4 (struct enic*) ; 
 int /*<<< orphan*/  enic_free_rq_buf ; 
 int /*<<< orphan*/  enic_free_wq_buf ; 
 int /*<<< orphan*/  FUNC5 (struct enic*) ; 
 int /*<<< orphan*/  FUNC6 (struct enic*) ; 
 int /*<<< orphan*/  FUNC7 (struct enic*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct enic* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct net_device *netdev)
{
	struct enic *enic = FUNC9(netdev);
	unsigned int i;
	int err;

	for (i = 0; i < enic->intr_count; i++) {
		FUNC14(&enic->intr[i]);
		(void)FUNC15(&enic->intr[i]); /* flush write */
	}

	FUNC7(enic);

	FUNC0(&enic->notify_timer);

	FUNC2(enic);

	for (i = 0; i < enic->rq_count; i++)
		FUNC8(&enic->napi[i]);

	FUNC10(netdev);
	FUNC11(netdev);

	if (!FUNC5(enic) && !FUNC6(enic))
		FUNC1(enic);

	for (i = 0; i < enic->wq_count; i++) {
		err = FUNC19(&enic->wq[i]);
		if (err)
			return err;
	}
	for (i = 0; i < enic->rq_count; i++) {
		err = FUNC17(&enic->rq[i]);
		if (err)
			return err;
	}

	FUNC3(enic);
	FUNC4(enic);

	for (i = 0; i < enic->wq_count; i++)
		FUNC18(&enic->wq[i], enic_free_wq_buf);
	for (i = 0; i < enic->rq_count; i++)
		FUNC16(&enic->rq[i], enic_free_rq_buf);
	for (i = 0; i < enic->cq_count; i++)
		FUNC12(&enic->cq[i]);
	for (i = 0; i < enic->intr_count; i++)
		FUNC13(&enic->intr[i]);

	return 0;
}