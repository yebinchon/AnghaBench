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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct ehca_eq {int /*<<< orphan*/  irq_spinlock; struct ehca_eqe_cache_entry* eqe_cache; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  ipz_queue; int /*<<< orphan*/  ist; } ;
struct ehca_shca {struct ehca_eq eq; int /*<<< orphan*/  ib_device; int /*<<< orphan*/  ipz_hca_handle; } ;
struct ehca_eqe_cache_entry {TYPE_1__* eqe; struct ehca_cq* cq; } ;
struct ehca_eqe {int dummy; } ;
struct ehca_cq {int /*<<< orphan*/  wait_completion; int /*<<< orphan*/  nr_events; } ;
struct TYPE_2__ {scalar_t__ entry; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int EHCA_EQE_CACHE_SIZE ; 
 int /*<<< orphan*/  EQE_COMPLETION_EVENT ; 
 int /*<<< orphan*/  EQE_CQ_TOKEN ; 
 scalar_t__ H_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ehca_cq*) ; 
 int /*<<< orphan*/  ehca_cq_idr ; 
 int /*<<< orphan*/  ehca_cq_idr_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 void* FUNC6 (struct ehca_shca*,struct ehca_eq*) ; 
 scalar_t__ ehca_scaling_code ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ehca_cq* FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ehca_shca*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct ehca_shca*,struct ehca_eqe*) ; 
 int /*<<< orphan*/  FUNC14 (struct ehca_cq*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct ehca_cq*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

void FUNC22(struct ehca_shca *shca, int is_irq)
{
	struct ehca_eq *eq = &shca->eq;
	struct ehca_eqe_cache_entry *eqe_cache = eq->eqe_cache;
	u64 eqe_value, ret;
	int eqe_cnt, i;
	int eq_empty = 0;

	FUNC18(&eq->irq_spinlock);
	if (is_irq) {
		const int max_query_cnt = 100;
		int query_cnt = 0;
		int int_state = 1;
		do {
			int_state = FUNC8(
				shca->ipz_hca_handle, eq->ist);
			query_cnt++;
			FUNC10();
		} while (int_state && query_cnt < max_query_cnt);
		if (FUNC20((query_cnt == max_query_cnt)))
			FUNC4(&shca->ib_device, "int_state=%x query_cnt=%x",
				 int_state, query_cnt);
	}

	/* read out all eqes */
	eqe_cnt = 0;
	do {
		u32 token;
		eqe_cache[eqe_cnt].eqe = FUNC6(shca, eq);
		if (!eqe_cache[eqe_cnt].eqe)
			break;
		eqe_value = eqe_cache[eqe_cnt].eqe->entry;
		if (FUNC0(EQE_COMPLETION_EVENT, eqe_value)) {
			token = FUNC0(EQE_CQ_TOKEN, eqe_value);
			FUNC15(&ehca_cq_idr_lock);
			eqe_cache[eqe_cnt].cq = FUNC9(&ehca_cq_idr, token);
			if (eqe_cache[eqe_cnt].cq)
				FUNC2(&eqe_cache[eqe_cnt].cq->nr_events);
			FUNC16(&ehca_cq_idr_lock);
			if (!eqe_cache[eqe_cnt].cq) {
				FUNC5(&shca->ib_device,
					 "Invalid eqe for non-existing cq "
					 "token=%x", token);
				continue;
			}
		} else
			eqe_cache[eqe_cnt].cq = NULL;
		eqe_cnt++;
	} while (eqe_cnt < EHCA_EQE_CACHE_SIZE);
	if (!eqe_cnt) {
		if (is_irq)
			FUNC4(&shca->ib_device,
				 "No eqe found for irq event");
		goto unlock_irq_spinlock;
	} else if (!is_irq) {
		ret = FUNC7(eq->ist);
		if (ret != H_SUCCESS)
			FUNC5(&shca->ib_device,
				 "bad return code EOI -rc = %lld\n", ret);
		FUNC4(&shca->ib_device, "deadman found %x eqe", eqe_cnt);
	}
	if (FUNC20(eqe_cnt == EHCA_EQE_CACHE_SIZE))
		FUNC4(&shca->ib_device, "too many eqes for one irq event");
	/* enable irq for new packets */
	for (i = 0; i < eqe_cnt; i++) {
		if (eq->eqe_cache[i].cq)
			FUNC17(eq->eqe_cache[i].cq);
	}
	/* check eq */
	FUNC18(&eq->spinlock);
	eq_empty = (!FUNC11(&shca->eq.ipz_queue));
	FUNC19(&eq->spinlock);
	/* call completion handler for cached eqes */
	for (i = 0; i < eqe_cnt; i++)
		if (eq->eqe_cache[i].cq) {
			if (ehca_scaling_code)
				FUNC14(eq->eqe_cache[i].cq);
			else {
				struct ehca_cq *cq = eq->eqe_cache[i].cq;
				FUNC3(cq);
				if (FUNC1(&cq->nr_events))
					FUNC21(&cq->wait_completion);
			}
		} else {
			FUNC4(&shca->ib_device, "Got non completion event");
			FUNC12(shca, eq->eqe_cache[i].eqe->entry);
		}
	/* poll eq if not empty */
	if (eq_empty)
		goto unlock_irq_spinlock;
	do {
		struct ehca_eqe *eqe;
		eqe = FUNC6(shca, &shca->eq);
		if (!eqe)
			break;
		FUNC13(shca, eqe);
	} while (1);

unlock_irq_spinlock:
	FUNC19(&eq->irq_spinlock);
}