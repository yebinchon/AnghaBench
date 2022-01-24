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
struct enic {unsigned int rq_count; unsigned int wq_count; unsigned int intr_count; int /*<<< orphan*/ * intr; int /*<<< orphan*/ * napi; int /*<<< orphan*/ * rq; int /*<<< orphan*/ * wq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct enic*) ; 
 int /*<<< orphan*/  FUNC1 (struct enic*) ; 
 int FUNC2 (struct enic*) ; 
 int /*<<< orphan*/  FUNC3 (struct enic*) ; 
 int /*<<< orphan*/  FUNC4 (struct enic*) ; 
 int /*<<< orphan*/  FUNC5 (struct enic*) ; 
 int /*<<< orphan*/  FUNC6 (struct enic*) ; 
 int /*<<< orphan*/  FUNC7 (struct enic*) ; 
 int FUNC8 (struct enic*) ; 
 int /*<<< orphan*/  enic_rq_alloc_buf ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,char*) ; 
 struct enic* FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct net_device *netdev)
{
	struct enic *enic = FUNC12(netdev);
	unsigned int i;
	int err;

	err = FUNC8(enic);
	if (err) {
		FUNC11(netdev, "Unable to request irq.\n");
		return err;
	}

	err = FUNC2(enic);
	if (err) {
		FUNC11(netdev,
			"Failed to alloc notify buffer, aborting.\n");
		goto err_out_free_intr;
	}

	for (i = 0; i < enic->rq_count; i++) {
		FUNC17(&enic->rq[i], enic_rq_alloc_buf);
		/* Need at least one buffer on ring to get going */
		if (FUNC15(&enic->rq[i]) == 0) {
			FUNC11(netdev, "Unable to alloc receive buffers\n");
			err = -ENOMEM;
			goto err_out_notify_unset;
		}
	}

	for (i = 0; i < enic->wq_count; i++)
		FUNC18(&enic->wq[i]);
	for (i = 0; i < enic->rq_count; i++)
		FUNC16(&enic->rq[i]);

	if (!FUNC5(enic) && !FUNC6(enic))
		FUNC0(enic);

	FUNC9(netdev);

	FUNC13(netdev);

	for (i = 0; i < enic->rq_count; i++)
		FUNC10(&enic->napi[i]);

	FUNC1(enic);

	for (i = 0; i < enic->intr_count; i++)
		FUNC14(&enic->intr[i]);

	FUNC7(enic);

	return 0;

err_out_notify_unset:
	FUNC3(enic);
err_out_free_intr:
	FUNC4(enic);

	return err;
}