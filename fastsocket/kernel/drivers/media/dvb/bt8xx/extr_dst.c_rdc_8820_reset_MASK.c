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
 int /*<<< orphan*/  DELAY ; 
 int /*<<< orphan*/  DST_DEBUG ; 
 int /*<<< orphan*/  DST_ERROR ; 
 int /*<<< orphan*/  NO_DELAY ; 
 int /*<<< orphan*/  RDC_8820_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC1 (struct dst_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  verbose ; 

__attribute__((used)) static int FUNC3(struct dst_state *state)
{
	FUNC0(verbose, DST_DEBUG, 1, "Resetting DST");
	if (FUNC1(state, RDC_8820_RESET, RDC_8820_RESET, 0, NO_DELAY) < 0) {
		FUNC0(verbose, DST_ERROR, 1, "dst_gpio_outb ERROR !");
		return -1;
	}
	FUNC2(1000);
	if (FUNC1(state, RDC_8820_RESET, RDC_8820_RESET, RDC_8820_RESET, DELAY) < 0) {
		FUNC0(verbose, DST_ERROR, 1, "dst_gpio_outb ERROR !");
		return -1;
	}

	return 0;
}