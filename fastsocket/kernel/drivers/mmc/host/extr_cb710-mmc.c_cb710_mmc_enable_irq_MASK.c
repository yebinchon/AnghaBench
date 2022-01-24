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
struct cb710_slot {int dummy; } ;
struct cb710_mmc_reader {int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cb710_slot*,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (struct cb710_slot*) ; 
 struct cb710_mmc_reader* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct cb710_slot *slot,
	unsigned short enable, unsigned short mask)
{
	struct cb710_mmc_reader *reader = FUNC2(FUNC1(slot));
	unsigned long flags;

	FUNC3(&reader->irq_lock, flags);
	/* this is the only thing irq_lock protects */
	FUNC0(slot, enable, mask);
	FUNC4(&reader->irq_lock, flags);
}