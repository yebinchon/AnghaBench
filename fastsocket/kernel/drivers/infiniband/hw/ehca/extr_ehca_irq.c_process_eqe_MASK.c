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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct ehca_shca {int /*<<< orphan*/  ib_device; } ;
struct ehca_eqe {int /*<<< orphan*/  entry; } ;
struct ehca_cq {int /*<<< orphan*/  wait_completion; int /*<<< orphan*/  nr_events; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EQE_COMPLETION_EVENT ; 
 int /*<<< orphan*/  EQE_CQ_TOKEN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ehca_cq*) ; 
 int /*<<< orphan*/  ehca_cq_idr ; 
 int /*<<< orphan*/  ehca_cq_idr_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ ehca_scaling_code ; 
 struct ehca_cq* FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ehca_shca*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ehca_cq*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct ehca_cq*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC13(struct ehca_shca *shca, struct ehca_eqe *eqe)
{
	u64 eqe_value;
	u32 token;
	struct ehca_cq *cq;

	eqe_value = eqe->entry;
	FUNC4(&shca->ib_device, "eqe_value=%llx", eqe_value);
	if (FUNC0(EQE_COMPLETION_EVENT, eqe_value)) {
		FUNC4(&shca->ib_device, "Got completion event");
		token = FUNC0(EQE_CQ_TOKEN, eqe_value);
		FUNC9(&ehca_cq_idr_lock);
		cq = FUNC6(&ehca_cq_idr, token);
		if (cq)
			FUNC2(&cq->nr_events);
		FUNC10(&ehca_cq_idr_lock);
		if (cq == NULL) {
			FUNC5(&shca->ib_device,
				 "Invalid eqe for non-existing cq token=%x",
				 token);
			return;
		}
		FUNC11(cq);
		if (ehca_scaling_code)
			FUNC8(cq);
		else {
			FUNC3(cq);
			if (FUNC1(&cq->nr_events))
				FUNC12(&cq->wait_completion);
		}
	} else {
		FUNC4(&shca->ib_device, "Got non completion event");
		FUNC7(shca, eqe_value);
	}
}