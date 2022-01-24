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
struct mthca_eq {int eqn; int nent; } ;
struct mthca_dev {int /*<<< orphan*/  doorbell_lock; scalar_t__ kar; } ;

/* Variables and functions */
 int MTHCA_EQ_DB_SET_CI ; 
 scalar_t__ MTHCA_EQ_DOORBELL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline void FUNC3(struct mthca_dev *dev, struct mthca_eq *eq, u32 ci)
{
	/*
	 * This barrier makes sure that all updates to ownership bits
	 * done by set_eqe_hw() hit memory before the consumer index
	 * is updated.  set_eq_ci() allows the HCA to possibly write
	 * more EQ entries, and we want to avoid the exceedingly
	 * unlikely possibility of the HCA writing an entry and then
	 * having set_eqe_hw() overwrite the owner field.
	 */
	FUNC2();
	FUNC1(MTHCA_EQ_DB_SET_CI | eq->eqn, ci & (eq->nent - 1),
		      dev->kar + MTHCA_EQ_DOORBELL,
		      FUNC0(&dev->doorbell_lock));
}