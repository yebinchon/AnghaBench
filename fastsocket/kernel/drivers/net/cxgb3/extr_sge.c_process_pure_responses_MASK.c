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
typedef  int u32 ;
struct sge_rspq {int cidx; int size; int gen; int credits; int /*<<< orphan*/  pure_rsps; struct rsp_desc* desc; } ;
struct sge_qset {scalar_t__ txq_stopped; struct sge_rspq rspq; } ;
struct rsp_desc {int /*<<< orphan*/  flags; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int RSPD_CTRL_MASK ; 
 int RSPD_GTS_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,struct sge_qset*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct sge_qset*,int) ; 
 int FUNC2 (struct rsp_desc*,struct sge_rspq*) ; 
 scalar_t__ FUNC3 (struct rsp_desc*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rsp_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,struct sge_rspq*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sge_qset*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct adapter *adap, struct sge_qset *qs,
				  struct rsp_desc *r)
{
	struct sge_rspq *q = &qs->rspq;
	unsigned int sleeping = 0;

	do {
		u32 flags = FUNC4(r->flags);

		r++;
		if (FUNC10(++q->cidx == q->size)) {
			q->cidx = 0;
			q->gen ^= 1;
			r = q->desc;
		}
		FUNC5(r);

		if (flags & RSPD_CTRL_MASK) {
			sleeping |= flags & RSPD_GTS_MASK;
			FUNC1(qs, flags);
		}

		q->pure_rsps++;
		if (++q->credits >= (q->size / 4)) {
			FUNC6(adap, q, q->credits);
			q->credits = 0;
		}
		if (!FUNC2(r, q))
			break;
		FUNC8();
	} while (FUNC3(r));

	if (sleeping)
		FUNC0(adap, qs, sleeping);

	FUNC9();		/* commit Tx queue .processed updates */
	if (FUNC10(qs->txq_stopped != 0))
		FUNC7(qs);

	return FUNC2(r, q);
}