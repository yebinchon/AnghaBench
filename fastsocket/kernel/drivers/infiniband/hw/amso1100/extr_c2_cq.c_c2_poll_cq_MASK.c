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
struct ib_wc {int dummy; } ;
struct ib_cq {int /*<<< orphan*/  device; } ;
struct c2_dev {int dummy; } ;
struct c2_cq {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct c2_dev*,struct c2_cq*,struct ib_wc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct c2_cq* FUNC3 (struct ib_cq*) ; 
 struct c2_dev* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct ib_cq *ibcq, int num_entries, struct ib_wc *entry)
{
	struct c2_dev *c2dev = FUNC4(ibcq->device);
	struct c2_cq *cq = FUNC3(ibcq);
	unsigned long flags;
	int npolled, err;

	FUNC1(&cq->lock, flags);

	for (npolled = 0; npolled < num_entries; ++npolled) {

		err = FUNC0(c2dev, cq, entry + npolled);
		if (err)
			break;
	}

	FUNC2(&cq->lock, flags);

	return npolled;
}