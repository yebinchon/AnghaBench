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
struct ipu_irq_map {int source; struct ipu_irq_bank* bank; } ;
struct ipu_irq_bank {int /*<<< orphan*/  status; int /*<<< orphan*/  ipu; } ;

/* Variables and functions */
 int /*<<< orphan*/  bank_lock ; 
 struct ipu_irq_map* FUNC0 (unsigned int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

bool FUNC4(unsigned int irq)
{
	struct ipu_irq_map *map = FUNC0(irq);
	struct ipu_irq_bank *bank;
	unsigned long lock_flags;
	bool ret;

	FUNC2(&bank_lock, lock_flags);
	bank = map->bank;
	ret = bank && FUNC1(bank->ipu, bank->status) &
		(1UL << (map->source & 31));
	FUNC3(&bank_lock, lock_flags);

	return ret;
}