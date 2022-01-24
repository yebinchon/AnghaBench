#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stripe_chunk {TYPE_1__* stripe; } ;
struct TYPE_5__ {scalar_t__ stats; } ;
struct TYPE_4__ {int /*<<< orphan*/  sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLEAN ; 
 int /*<<< orphan*/  FUNC0 (struct stripe_chunk*) ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_STRIPE_ERROR ; 
 int /*<<< orphan*/  FUNC2 (struct stripe_chunk*) ; 
 unsigned long FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct stripe_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (unsigned long) ; 

__attribute__((used)) static void FUNC8(unsigned long error, void *context)
{
	struct stripe_chunk *chunk = context;

	if (FUNC7(error)) {
		FUNC5(chunk, ERROR);
		/* REMOVEME: statistics. */
		FUNC4(FUNC1(chunk->stripe->sc)->stats + S_STRIPE_ERROR);
	} else
		FUNC5(chunk, CLEAN);

	/*
	 * For recovery stripes, I need to reset locked locked
	 * here, because those aren't processed in do_endios().
	 */
	if (FUNC7(FUNC3(chunk->stripe)))
		FUNC0(chunk);
	else
		FUNC2(chunk);

	/* Indirectly puts stripe on cache's endio list via stripe_io_put(). */
	FUNC6(chunk->stripe);
}