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
typedef  int u32 ;
struct tg3 {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int APE_EVENT_STATUS_DRIVER_EVNT ; 
 int APE_EVENT_STATUS_STATE_CHNGE ; 
 int APE_EVENT_STATUS_STATE_START ; 
 int APE_EVENT_STATUS_STATE_UNLOAD ; 
 int APE_HOST_BEHAV_NO_PHYLOCK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int APE_HOST_SEG_LEN_MAGIC ; 
 int APE_HOST_SEG_SIG_MAGIC ; 
 int /*<<< orphan*/  ENABLE_APE ; 
#define  RESET_KIND_INIT 129 
#define  RESET_KIND_SHUTDOWN 128 
 int /*<<< orphan*/  TG3_APE_HOST_BEHAVIOR ; 
 int /*<<< orphan*/  TG3_APE_HOST_DRIVER_ID ; 
 int /*<<< orphan*/  TG3_APE_HOST_DRVR_STATE ; 
 int TG3_APE_HOST_DRVR_STATE_START ; 
 int TG3_APE_HOST_DRVR_STATE_UNLOAD ; 
 int TG3_APE_HOST_DRVR_STATE_WOL ; 
 int /*<<< orphan*/  TG3_APE_HOST_INIT_COUNT ; 
 int /*<<< orphan*/  TG3_APE_HOST_SEG_LEN ; 
 int /*<<< orphan*/  TG3_APE_HOST_SEG_SIG ; 
 int /*<<< orphan*/  TG3_APE_HOST_WOL_SPEED ; 
 int TG3_APE_HOST_WOL_SPEED_AUTO ; 
 int /*<<< orphan*/  TG3_MAJ_NUM ; 
 int /*<<< orphan*/  TG3_MIN_NUM ; 
 int /*<<< orphan*/  WOL_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tg3*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tg3*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct tg3*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct tg3 *tp, int kind)
{
	u32 event;
	u32 apedata;

	if (!FUNC5(tp, ENABLE_APE))
		return;

	switch (kind) {
	case RESET_KIND_INIT:
		FUNC4(tp, TG3_APE_HOST_SEG_SIG,
				APE_HOST_SEG_SIG_MAGIC);
		FUNC4(tp, TG3_APE_HOST_SEG_LEN,
				APE_HOST_SEG_LEN_MAGIC);
		apedata = FUNC2(tp, TG3_APE_HOST_INIT_COUNT);
		FUNC4(tp, TG3_APE_HOST_INIT_COUNT, ++apedata);
		FUNC4(tp, TG3_APE_HOST_DRIVER_ID,
			FUNC0(TG3_MAJ_NUM, TG3_MIN_NUM));
		FUNC4(tp, TG3_APE_HOST_BEHAVIOR,
				APE_HOST_BEHAV_NO_PHYLOCK);
		FUNC4(tp, TG3_APE_HOST_DRVR_STATE,
				    TG3_APE_HOST_DRVR_STATE_START);

		event = APE_EVENT_STATUS_STATE_START;
		break;
	case RESET_KIND_SHUTDOWN:
		/* With the interface we are currently using,
		 * APE does not track driver state.  Wiping
		 * out the HOST SEGMENT SIGNATURE forces
		 * the APE to assume OS absent status.
		 */
		FUNC4(tp, TG3_APE_HOST_SEG_SIG, 0x0);

		if (FUNC1(&tp->pdev->dev) &&
		    FUNC5(tp, WOL_ENABLE)) {
			FUNC4(tp, TG3_APE_HOST_WOL_SPEED,
					    TG3_APE_HOST_WOL_SPEED_AUTO);
			apedata = TG3_APE_HOST_DRVR_STATE_WOL;
		} else
			apedata = TG3_APE_HOST_DRVR_STATE_UNLOAD;

		FUNC4(tp, TG3_APE_HOST_DRVR_STATE, apedata);

		event = APE_EVENT_STATUS_STATE_UNLOAD;
		break;
	default:
		return;
	}

	event |= APE_EVENT_STATUS_DRIVER_EVNT | APE_EVENT_STATUS_STATE_CHNGE;

	FUNC3(tp, event);
}