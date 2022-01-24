#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  pending; } ;
struct stripe {TYPE_2__* sc; TYPE_1__ io; } ;
struct TYPE_4__ {int /*<<< orphan*/  active_stripes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct stripe*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct stripe*) ; 
 scalar_t__ FUNC6 (struct stripe*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct stripe *stripe)
{
	if (FUNC4(&stripe->io.pending)) {
		if (FUNC7(FUNC2(stripe)))
			/* Don't put recovery stripe on endio list. */
			FUNC8(FUNC1(stripe->sc));
		else
			/* Add regular stripe to endio list and wake daemon. */
			FUNC5(stripe);

		/* REMOVEME: statistics */
		FUNC3(&stripe->sc->active_stripes);
	} else
		FUNC0(FUNC6(stripe) < 0);
}