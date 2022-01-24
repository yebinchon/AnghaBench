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
struct bnad {int /*<<< orphan*/  bna_lock; } ;

/* Variables and functions */
 int FUNC0 (struct bnad*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnad*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct bnad*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC5(struct bnad *bnad)
{
	int irq;
	unsigned long flags;

	FUNC3(&bnad->bna_lock, flags);
	FUNC1(bnad);
	FUNC4(&bnad->bna_lock, flags);

	irq = FUNC0(bnad);
	FUNC2(irq, bnad);
}