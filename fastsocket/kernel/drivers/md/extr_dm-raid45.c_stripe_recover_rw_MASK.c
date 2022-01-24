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
struct stripe {TYPE_1__* recover; int /*<<< orphan*/  key; } ;
struct TYPE_2__ {int /*<<< orphan*/  pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct stripe*) ; 
 scalar_t__ FUNC2 (struct stripe*) ; 
 scalar_t__ FUNC3 (struct stripe*) ; 
 int /*<<< orphan*/  FUNC4 (struct stripe*,int*) ; 
 int FUNC5 (struct stripe*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct stripe*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct stripe *stripe)
{
	int r = 0, sync = 0;

	/* Read/write flip-flop. */
	if (FUNC3(stripe)) {
		FUNC1(stripe);
		stripe->key = stripe->recover->pos;
		r = FUNC5(stripe, FUNC4(stripe, &sync));
		FUNC0(!r);
	} else if (FUNC2(stripe)) {
		r = FUNC6(stripe, FUNC4(stripe, &sync));
		FUNC0(!r);
	}

	FUNC0(sync);
	return r;
}