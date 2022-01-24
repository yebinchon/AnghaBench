#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int pluscount; scalar_t__ lastplus; } ;
struct TYPE_8__ {scalar_t__ online; TYPE_2__ emu; } ;
typedef  TYPE_3__ modem_info ;
struct TYPE_6__ {TYPE_3__* info; } ;
struct TYPE_9__ {int* m_idx; TYPE_1__ mdm; int /*<<< orphan*/ * usage; } ;

/* Variables and functions */
 int ISDN_MAX_CHANNELS ; 
 int /*<<< orphan*/  ISDN_TIMER_MODEMPLUS ; 
 scalar_t__ PLUSWAIT2 ; 
 int /*<<< orphan*/  RESULT_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_5__* dev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC4(void)
{
	int ton = 0;
	int i;
	int midx;

	for (i = 0; i < ISDN_MAX_CHANNELS; i++)
		if (FUNC0(dev->usage[i]))
			if ((midx = dev->m_idx[i]) >= 0) {
				modem_info *info = &dev->mdm.info[midx];
				if (info->online) {
					ton = 1;
					if ((info->emu.pluscount == 3) &&
					    FUNC3(jiffies , info->emu.lastplus + PLUSWAIT2)) {
						info->emu.pluscount = 0;
						info->online = 0;
						FUNC2(RESULT_OK, info);
					}
				}
			}
	FUNC1(ISDN_TIMER_MODEMPLUS, ton);
}