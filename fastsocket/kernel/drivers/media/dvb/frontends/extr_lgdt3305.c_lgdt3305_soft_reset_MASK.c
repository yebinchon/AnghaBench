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
struct lgdt3305_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LGDT3305_GEN_CTRL_3 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct lgdt3305_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct lgdt3305_state *state)
{
	int ret;

	FUNC0("\n");

	ret = FUNC2(state, LGDT3305_GEN_CTRL_3, 0, 0);
	if (FUNC1(ret))
		goto fail;

	FUNC3(20);
	ret = FUNC2(state, LGDT3305_GEN_CTRL_3, 0, 1);
fail:
	return ret;
}