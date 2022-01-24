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
struct ivtv_mailbox_data {int max_mbox; int /*<<< orphan*/  busy; TYPE_1__* mbox; } ;
struct ivtv {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ivtv *itv, struct ivtv_mailbox_data *mbdata)
{
	int i;

	for (i = 0; i <= mbdata->max_mbox; i++) {
		FUNC0("Clearing mailbox %d: cmd 0x%08x flags 0x%08x\n",
			i, FUNC2(&mbdata->mbox[i].cmd), FUNC2(&mbdata->mbox[i].flags));
		FUNC3(0, &mbdata->mbox[i].flags);
		FUNC1(i, &mbdata->busy);
	}
}