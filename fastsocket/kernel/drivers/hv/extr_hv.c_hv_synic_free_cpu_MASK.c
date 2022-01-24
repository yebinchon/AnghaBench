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
struct TYPE_2__ {scalar_t__* synic_message_page; scalar_t__* synic_event_page; int /*<<< orphan*/ * event_dpc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 TYPE_1__ hv_context ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(int cpu)
{
	FUNC1(hv_context.event_dpc[cpu]);
	if (hv_context.synic_message_page[cpu])
		FUNC0((unsigned long)hv_context.synic_event_page[cpu]);
	if (hv_context.synic_message_page[cpu])
		FUNC0((unsigned long)hv_context.synic_message_page[cpu]);
}