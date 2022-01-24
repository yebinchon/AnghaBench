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
struct stripe {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct stripe*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct stripe*) ; 
 int /*<<< orphan*/  FUNC4 (struct stripe*) ; 
 int FUNC5 (struct stripe*) ; 
 int /*<<< orphan*/  FUNC6 (struct stripe*) ; 

__attribute__((used)) static int FUNC7(struct stripe *stripe, int pi)
{
	FUNC0(FUNC6(stripe));

	/* Invalidate all chunks so that they get read in. */
	FUNC4(stripe);
	FUNC3(stripe); /* Allow io on all recovery chunks. */

	/*
	 * If we are reconstructing a perticular device, we can avoid
	 * reading the respective chunk in, because we're going to
	 * reconstruct it anyway.
	 *
	 * We can't do that for resynchronization of rotating parity,
	 * because the recovery stripe chunk size is typically larger
	 * than the sets chunk size.
	 */
	if (pi > -1)
		FUNC2(FUNC1(stripe, pi));

	return FUNC5(stripe);
}