#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* ipmi_smi_t ;
struct TYPE_6__ {int /*<<< orphan*/ * null_user_handler; TYPE_1__* bmc; int /*<<< orphan*/  waitq; } ;
struct TYPE_5__ {int guid_set; } ;

/* Variables and functions */
 int /*<<< orphan*/ * guid_handler ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(ipmi_smi_t intf)
{
	int rv;

	intf->bmc->guid_set = 0x2;
	intf->null_user_handler = guid_handler;
	rv = FUNC0(intf, 0);
	if (rv)
		/* Send failed, no GUID available. */
		intf->bmc->guid_set = 0;
	FUNC1(intf->waitq, intf->bmc->guid_set != 2);
	intf->null_user_handler = NULL;
}