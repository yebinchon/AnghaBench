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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct stripe*) ; 

__attribute__((used)) static void FUNC4(struct stripe *stripe)
{
	if (FUNC2(&stripe->io.pending) == 1)
		/* REMOVEME: statistics */
		FUNC1(&stripe->sc->active_stripes);
	else
		FUNC0(FUNC3(stripe) < 0);
}