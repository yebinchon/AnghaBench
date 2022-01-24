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
struct TYPE_2__ {int /*<<< orphan*/  size; } ;
struct stripe {TYPE_1__ io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct stripe*,int) ; 
 int /*<<< orphan*/  DIRTY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct stripe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct stripe*) ; 
 int FUNC5 (struct stripe*) ; 
 int /*<<< orphan*/  FUNC6 (struct stripe*) ; 
 int /*<<< orphan*/  FUNC7 (struct stripe*,int) ; 

__attribute__((used)) static int FUNC8(struct stripe *stripe, int pi)
{
	FUNC0(FUNC6(stripe));

	/*
	 * If this is a reconstruct of a particular device, then
	 * reconstruct the respective chunk, else create parity chunk.
	 */
	if (pi > -1) {
		FUNC7(stripe, pi);
		FUNC3(stripe, stripe->io.size, 0, pi);
		FUNC2(FUNC1(stripe, pi), DIRTY);
	} else
		FUNC4(stripe);

	return FUNC5(stripe);
}