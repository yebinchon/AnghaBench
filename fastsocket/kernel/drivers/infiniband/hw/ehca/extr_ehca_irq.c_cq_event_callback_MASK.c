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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ehca_shca {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;
struct ehca_cq {int /*<<< orphan*/  wait_completion; int /*<<< orphan*/  nr_events; TYPE_1__ ipz_cq_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EQE_CQ_TOKEN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ehca_cq_idr ; 
 int /*<<< orphan*/  ehca_cq_idr_lock ; 
 int /*<<< orphan*/  FUNC3 (struct ehca_shca*,struct ehca_cq*,int /*<<< orphan*/ ) ; 
 struct ehca_cq* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ehca_shca *shca,
			      u64 eqe)
{
	struct ehca_cq *cq;
	u32 token = FUNC0(EQE_CQ_TOKEN, eqe);

	FUNC5(&ehca_cq_idr_lock);
	cq = FUNC4(&ehca_cq_idr, token);
	if (cq)
		FUNC2(&cq->nr_events);
	FUNC6(&ehca_cq_idr_lock);

	if (!cq)
		return;

	FUNC3(shca, cq, cq->ipz_cq_handle.handle);

	if (FUNC1(&cq->nr_events))
		FUNC7(&cq->wait_completion);

	return;
}