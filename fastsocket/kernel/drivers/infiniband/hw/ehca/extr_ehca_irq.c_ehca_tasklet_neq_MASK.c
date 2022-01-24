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
struct TYPE_2__ {int /*<<< orphan*/  ipz_eq_handle; } ;
struct ehca_shca {int /*<<< orphan*/  ib_device; TYPE_1__ neq; int /*<<< orphan*/  ipz_hca_handle; } ;
struct ehca_eqe {int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ H_SUCCESS ; 
 int /*<<< orphan*/  NEQE_COMPLETION_EVENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct ehca_eqe* FUNC2 (struct ehca_shca*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ehca_shca*,int /*<<< orphan*/ ) ; 

void FUNC5(unsigned long data)
{
	struct ehca_shca *shca = (struct ehca_shca*)data;
	struct ehca_eqe *eqe;
	u64 ret;

	eqe = FUNC2(shca, &shca->neq);

	while (eqe) {
		if (!FUNC0(NEQE_COMPLETION_EVENT, eqe->entry))
			FUNC4(shca, eqe->entry);

		eqe = FUNC2(shca, &shca->neq);
	}

	ret = FUNC3(shca->ipz_hca_handle,
				 shca->neq.ipz_eq_handle, 0xFFFFFFFFFFFFFFFFL);

	if (ret != H_SUCCESS)
		FUNC1(&shca->ib_device, "Can't clear notification events.");

	return;
}