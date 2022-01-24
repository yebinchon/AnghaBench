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
typedef  scalar_t__ u64 ;
struct ehca_shca {int /*<<< orphan*/  ib_device; int /*<<< orphan*/  ipz_hca_handle; } ;
struct ehca_eq {int /*<<< orphan*/  ipz_queue; int /*<<< orphan*/  interrupt_task; scalar_t__ is_initialized; int /*<<< orphan*/  ist; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ H_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct ehca_eq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  shca_list_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct ehca_shca *shca, struct ehca_eq *eq)
{
	unsigned long flags;
	u64 h_ret;

	FUNC2(eq->ist, (void *)shca);

	FUNC4(&shca_list_lock, flags);
	eq->is_initialized = 0;
	FUNC5(&shca_list_lock, flags);

	FUNC6(&eq->interrupt_task);

	h_ret = FUNC1(shca->ipz_hca_handle, eq);

	if (h_ret != H_SUCCESS) {
		FUNC0(&shca->ib_device, "Can't free EQ resources.");
		return -EINVAL;
	}
	FUNC3(NULL, &eq->ipz_queue);

	return 0;
}