#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ xmit_buf; scalar_t__ fax; } ;
typedef  TYPE_2__ modem_info ;
struct TYPE_5__ {int /*<<< orphan*/ * tty_modem; TYPE_2__* info; } ;
struct TYPE_7__ {TYPE_1__ mdm; } ;

/* Variables and functions */
 int ISDN_MAX_CHANNELS ; 
 TYPE_4__* dev ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(void)
{
	modem_info *info;
	int i;

	for (i = 0; i < ISDN_MAX_CHANNELS; i++) {
		info = &dev->mdm.info[i];
		FUNC0(info);
#ifdef CONFIG_ISDN_TTY_FAX
		kfree(info->fax);
#endif
		FUNC1(info->xmit_buf - 4);
	}
	FUNC3(dev->mdm.tty_modem);
	FUNC2(dev->mdm.tty_modem);
	dev->mdm.tty_modem = NULL;
}