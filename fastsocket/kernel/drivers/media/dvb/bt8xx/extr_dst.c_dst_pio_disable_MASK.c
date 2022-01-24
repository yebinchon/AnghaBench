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
struct dst_state {int type_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DST_ERROR ; 
 int DST_TYPE_HAS_FW_1 ; 
 int /*<<< orphan*/  NO_DELAY ; 
 int /*<<< orphan*/  RDC_8820_PIO_0_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC1 (struct dst_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  verbose ; 

int FUNC3(struct dst_state *state)
{
	if (FUNC1(state, ~0, RDC_8820_PIO_0_DISABLE, RDC_8820_PIO_0_DISABLE, NO_DELAY) < 0) {
		FUNC0(verbose, DST_ERROR, 1, "dst_gpio_outb ERROR !");
		return -1;
	}
	if (state->type_flags & DST_TYPE_HAS_FW_1)
		FUNC2(1000);

	return 0;
}