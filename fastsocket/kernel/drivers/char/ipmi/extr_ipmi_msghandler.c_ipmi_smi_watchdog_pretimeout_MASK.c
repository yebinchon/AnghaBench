#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ipmi_smi_t ;
struct TYPE_3__ {int /*<<< orphan*/  recv_tasklet; int /*<<< orphan*/  watchdog_pretimeouts_to_deliver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(ipmi_smi_t intf)
{
	FUNC0(&intf->watchdog_pretimeouts_to_deliver, 1);
	FUNC1(&intf->recv_tasklet);
}