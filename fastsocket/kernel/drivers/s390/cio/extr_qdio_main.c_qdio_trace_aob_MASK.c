#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qdio_q {TYPE_2__** sbal; } ;
struct qdio_irq {int dummy; } ;
struct qaob {unsigned long res1; unsigned long res2; unsigned long res3; unsigned long aorc; unsigned long flags; unsigned long cbtbs; unsigned long sb_count; scalar_t__ user2; scalar_t__ user1; scalar_t__* res4; scalar_t__ user0; int /*<<< orphan*/ * dcount; scalar_t__* sba; scalar_t__* res0; } ;
struct TYPE_4__ {TYPE_1__* element; } ;
struct TYPE_3__ {int /*<<< orphan*/  length; scalar_t__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct qdio_irq*,char*,unsigned long,...) ; 
 int /*<<< orphan*/  DBF_INFO ; 
 int QDIO_MAX_ELEMENTS_PER_BUFFER ; 
 scalar_t__ FUNC1 (struct qaob*) ; 

__attribute__((used)) static inline void FUNC2(struct qdio_irq *irq, struct qdio_q *q,
				int i, struct qaob *aob)
{
	int tmp;

	FUNC0(DBF_INFO, irq, "AOB%d:%lx", i,
			(unsigned long) FUNC1(aob));
	FUNC0(DBF_INFO, irq, "RES00:%lx",
			(unsigned long) aob->res0[0]);
	FUNC0(DBF_INFO, irq, "RES01:%lx",
			(unsigned long) aob->res0[1]);
	FUNC0(DBF_INFO, irq, "RES02:%lx",
			(unsigned long) aob->res0[2]);
	FUNC0(DBF_INFO, irq, "RES03:%lx",
			(unsigned long) aob->res0[3]);
	FUNC0(DBF_INFO, irq, "RES04:%lx",
			(unsigned long) aob->res0[4]);
	FUNC0(DBF_INFO, irq, "RES05:%lx",
			(unsigned long) aob->res0[5]);
	FUNC0(DBF_INFO, irq, "RES1:%x", aob->res1);
	FUNC0(DBF_INFO, irq, "RES2:%x", aob->res2);
	FUNC0(DBF_INFO, irq, "RES3:%x", aob->res3);
	FUNC0(DBF_INFO, irq, "AORC:%u", aob->aorc);
	FUNC0(DBF_INFO, irq, "FLAGS:%u", aob->flags);
	FUNC0(DBF_INFO, irq, "CBTBS:%u", aob->cbtbs);
	FUNC0(DBF_INFO, irq, "SBC:%u", aob->sb_count);
	for (tmp = 0; tmp < QDIO_MAX_ELEMENTS_PER_BUFFER; ++tmp) {
		FUNC0(DBF_INFO, irq, "SBA%d:%lx", tmp,
				(unsigned long) aob->sba[tmp]);
		FUNC0(DBF_INFO, irq, "rSBA%d:%lx", tmp,
				(unsigned long) q->sbal[i]->element[tmp].addr);
		FUNC0(DBF_INFO, irq, "DC%d:%u", tmp, aob->dcount[tmp]);
		FUNC0(DBF_INFO, irq, "rDC%d:%u", tmp,
				q->sbal[i]->element[tmp].length);
	}
	FUNC0(DBF_INFO, irq, "USER0:%lx", (unsigned long) aob->user0);
	for (tmp = 0; tmp < 2; ++tmp) {
		FUNC0(DBF_INFO, irq, "RES4%d:%lx", tmp,
			(unsigned long) aob->res4[tmp]);
	}
	FUNC0(DBF_INFO, irq, "USER1:%lx", (unsigned long) aob->user1);
	FUNC0(DBF_INFO, irq, "USER2:%lx", (unsigned long) aob->user2);
}