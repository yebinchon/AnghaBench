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
typedef  scalar_t__ u8 ;
struct fst_port_info {int dummy; } ;
struct fst_card_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  alarmIndicationSignal; int /*<<< orphan*/  receiveRemoteAlarm; int /*<<< orphan*/  lossOfSignal; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_INTR ; 
 scalar_t__ FUNC0 (struct fst_card_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fst_port_info*) ; 
 TYPE_1__ suStatus ; 

__attribute__((used)) static void
FUNC6(struct fst_card_info *card, struct fst_port_info *port)
{
	u8 los;
	u8 rra;
	u8 ais;

	los = FUNC0(card, suStatus.lossOfSignal);
	rra = FUNC0(card, suStatus.receiveRemoteAlarm);
	ais = FUNC0(card, suStatus.alarmIndicationSignal);

	if (los) {
		/*
		 * Lost the link
		 */
		if (FUNC3(FUNC5(port))) {
			FUNC1(DBG_INTR, "Net carrier off\n");
			FUNC2(FUNC5(port));
		}
	} else {
		/*
		 * Link available
		 */
		if (!FUNC3(FUNC5(port))) {
			FUNC1(DBG_INTR, "Net carrier on\n");
			FUNC4(FUNC5(port));
		}
	}

	if (los)
		FUNC1(DBG_INTR, "Assert LOS Alarm\n");
	else
		FUNC1(DBG_INTR, "De-assert LOS Alarm\n");
	if (rra)
		FUNC1(DBG_INTR, "Assert RRA Alarm\n");
	else
		FUNC1(DBG_INTR, "De-assert RRA Alarm\n");

	if (ais)
		FUNC1(DBG_INTR, "Assert AIS Alarm\n");
	else
		FUNC1(DBG_INTR, "De-assert AIS Alarm\n");
}