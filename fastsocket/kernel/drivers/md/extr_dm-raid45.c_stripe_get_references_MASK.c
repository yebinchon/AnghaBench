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
struct stripe {int /*<<< orphan*/  sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct stripe*) ; 
 int /*<<< orphan*/  FUNC3 (struct stripe*) ; 

__attribute__((used)) static void FUNC4(struct stripe *stripe, unsigned p)
{

	/*
	 * Another one to reference the stripe in
	 * order to protect vs. LRU list moves.
	 */
	FUNC1(FUNC0(stripe->sc));	/* Global io references. */
	FUNC2(stripe);
	FUNC3(stripe);	/* One for each chunk io. */
}