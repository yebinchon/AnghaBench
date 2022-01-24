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
struct list_head {int dummy; } ;
struct bfad_s {int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/  bfa; } ;
struct TYPE_2__ {int /*<<< orphan*/  entry; } ;
struct bfad_msix_s {TYPE_1__ msix; struct bfad_s* bfad; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t
FUNC7(int irq, void *dev_id)
{
	struct bfad_msix_s *vec = dev_id;
	struct bfad_s *bfad = vec->bfad;
	struct list_head doneq;
	unsigned long   flags;

	FUNC5(&bfad->bfad_lock, flags);

	FUNC3(&bfad->bfa, vec->msix.entry);
	FUNC0(&bfad->bfa, &doneq);
	FUNC6(&bfad->bfad_lock, flags);

	if (!FUNC4(&doneq)) {
		FUNC2(&bfad->bfa, &doneq);

		FUNC5(&bfad->bfad_lock, flags);
		FUNC1(&bfad->bfa, &doneq);
		FUNC6(&bfad->bfad_lock, flags);
	}

	return IRQ_HANDLED;
}