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
struct dst_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DST_ERROR ; 
 int /*<<< orphan*/  DST_INFO ; 
 int /*<<< orphan*/  NO_DELAY ; 
 int /*<<< orphan*/  RDC_8820_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC1 (struct dst_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  verbose ; 

int FUNC3(struct dst_state *state)
{
	FUNC0(verbose, DST_INFO, 1, "Resetting state machine");
	if (FUNC1(state, RDC_8820_INT, RDC_8820_INT, 0, NO_DELAY) < 0) {
		FUNC0(verbose, DST_ERROR, 1, "dst_gpio_outb ERROR !");
		return -1;
	}
	FUNC2(10);
	if (FUNC1(state, RDC_8820_INT, RDC_8820_INT, RDC_8820_INT, NO_DELAY) < 0) {
		FUNC0(verbose, DST_ERROR, 1, "dst_gpio_outb ERROR !");
		FUNC2(10);
		return -1;
	}

	return 0;
}