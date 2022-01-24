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
struct flexcop_device {int init_state; int /*<<< orphan*/  fe; } ;

/* Variables and functions */
 int FC_STATE_FE_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct flexcop_device *fc)
{
	if (fc->init_state & FC_STATE_FE_INIT) {
		FUNC1(fc->fe);
		FUNC0(fc->fe);
	}
	fc->init_state &= ~FC_STATE_FE_INIT;
}