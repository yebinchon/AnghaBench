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
struct ps2dev {int dummy; } ;
struct psmouse {scalar_t__ model; struct hgpk_data* private; struct ps2dev ps2dev; } ;
struct hgpk_data {scalar_t__ recalib_window; } ;

/* Variables and functions */
 scalar_t__ HGPK_MODEL_C ; 
 int /*<<< orphan*/  PSMOUSE_ACTIVATED ; 
 int PSMOUSE_CMD_ENABLE ; 
 int /*<<< orphan*/  PSMOUSE_INITIALIZING ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct ps2dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC4 (struct psmouse*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  recal_guard_time ; 

__attribute__((used)) static int FUNC5(struct psmouse *psmouse)
{
	struct ps2dev *ps2dev = &psmouse->ps2dev;
	struct hgpk_data *priv = psmouse->private;

	/* C-series touchpads added the recalibrate command */
	if (psmouse->model < HGPK_MODEL_C)
		return 0;

	/* we don't want to race with the irq handler, nor with resyncs */
	FUNC4(psmouse, PSMOUSE_INITIALIZING);

	/* start by resetting the device */
	FUNC3(psmouse);

	/* send the recalibrate request */
	if (FUNC2(ps2dev, NULL, 0xf5) ||
	    FUNC2(ps2dev, NULL, 0xf5) ||
	    FUNC2(ps2dev, NULL, 0xe6) ||
	    FUNC2(ps2dev, NULL, 0xf5)) {
		return -1;
	}

	/* according to ALPS, 150mS is required for recalibration */
	FUNC1(150);

	/* XXX: If a finger is down during this delay, recalibration will
	 * detect capacitance incorrectly.  This is a hardware bug, and
	 * we don't have a good way to deal with it.  The 2s window stuff
	 * (below) is our best option for now.
	 */

	if (FUNC2(ps2dev, NULL, PSMOUSE_CMD_ENABLE))
		return -1;

	FUNC4(psmouse, PSMOUSE_ACTIVATED);

	/* After we recalibrate, we shouldn't get any packets for 2s.  If
	 * we do, it's likely that someone's finger was on the touchpad.
	 * If someone's finger *was* on the touchpad, it's probably
	 * miscalibrated.  So, we should schedule another recalibration
	 */
	priv->recalib_window = jiffies +  FUNC0(recal_guard_time);

	return 0;
}