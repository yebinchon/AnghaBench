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
typedef  size_t u16 ;
struct bfa_plog_s {scalar_t__ plog_enabled; size_t tail; scalar_t__ head; struct bfa_plog_rec_s* plog_recs; } ;
struct bfa_plog_rec_s {int /*<<< orphan*/  tv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_plog_rec_s*,struct bfa_plog_rec_s*,int) ; 
 scalar_t__ FUNC4 (struct bfa_plog_rec_s*) ; 

__attribute__((used)) static void
FUNC5(struct bfa_plog_s *plog, struct bfa_plog_rec_s *pl_rec)
{
	u16 tail;
	struct bfa_plog_rec_s *pl_recp;

	if (plog->plog_enabled == 0)
		return;

	if (FUNC4(pl_rec)) {
		FUNC1(1);
		return;
	}

	tail = plog->tail;

	pl_recp = &(plog->plog_recs[tail]);

	FUNC3(pl_recp, pl_rec, sizeof(struct bfa_plog_rec_s));

	pl_recp->tv = FUNC2();
	FUNC0(plog->tail);

	if (plog->head == plog->tail)
		FUNC0(plog->head);
}