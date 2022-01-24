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
struct qib_qp {int /*<<< orphan*/  next; } ;
struct qib_ibport {int /*<<< orphan*/  qp1; int /*<<< orphan*/  qp0; } ;
struct qib_ibdev {unsigned int qp_table_size; int /*<<< orphan*/  qpt_lock; int /*<<< orphan*/ * qp_table; } ;
struct qib_devdata {unsigned int num_pports; TYPE_1__* pport; struct qib_ibdev verbs_dev; } ;
struct TYPE_2__ {struct qib_ibport ibport_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_ibport*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct qib_qp* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 () ; 

unsigned FUNC10(struct qib_devdata *dd)
{
	struct qib_ibdev *dev = &dd->verbs_dev;
	unsigned long flags;
	struct qib_qp *qp;
	unsigned n, qp_inuse = 0;

	for (n = 0; n < dd->num_pports; n++) {
		struct qib_ibport *ibp = &dd->pport[n].ibport_data;

		if (!FUNC1(ibp))
			qp_inuse++;
		FUNC5();
		if (FUNC3(ibp->qp0))
			qp_inuse++;
		if (FUNC3(ibp->qp1))
			qp_inuse++;
		FUNC6();
	}

	FUNC7(&dev->qpt_lock, flags);
	for (n = 0; n < dev->qp_table_size; n++) {
		qp = FUNC4(dev->qp_table[n],
			FUNC0(&dev->qpt_lock));
		FUNC2(dev->qp_table[n], NULL);

		for (; qp; qp = FUNC4(qp->next,
					FUNC0(&dev->qpt_lock)))
			qp_inuse++;
	}
	FUNC8(&dev->qpt_lock, flags);
	FUNC9();

	return qp_inuse;
}