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
struct iwl_test {scalar_t__ notify; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_test*,struct iwl_rx_cmd_buffer*) ; 

void FUNC1(struct iwl_test *tst, struct iwl_rx_cmd_buffer *rxb)
{
	if (tst->notify)
		FUNC0(tst, rxb);
}