#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ online; } ;
typedef  TYPE_2__ modem_info ;
struct TYPE_6__ {TYPE_2__* info; } ;
struct TYPE_8__ {TYPE_1__ mdm; } ;

/* Variables and functions */
 int ISDN_MAX_CHANNELS ; 
 int /*<<< orphan*/  ISDN_TIMER_MODEMXMIT ; 
 TYPE_5__* dev ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void
FUNC3(void)
{
	int ton = 1;
	int i;

	for (i = 0; i < ISDN_MAX_CHANNELS; i++) {
		modem_info *info = &dev->mdm.info[i];
		if (info->online) {
			ton = 1;
			FUNC1(info);
			FUNC2(info);
		}
	}
	FUNC0(ISDN_TIMER_MODEMXMIT, ton);
}