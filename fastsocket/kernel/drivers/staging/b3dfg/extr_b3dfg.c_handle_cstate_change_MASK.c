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
typedef  scalar_t__ u32 ;
struct device {int dummy; } ;
struct b3dfg_dev {unsigned long cstate_tstamp; int /*<<< orphan*/  cstate_lock; int /*<<< orphan*/  buffer_waitqueue; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  B3D_REG_WAND_STS ; 
 scalar_t__ FUNC0 (struct b3dfg_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct b3dfg_dev*) ; 
 unsigned long jiffies_64 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct b3dfg_dev *fgdev)
{
	u32 cstate = FUNC0(fgdev, B3D_REG_WAND_STS);
	unsigned long when;
	struct device *dev = &fgdev->pdev->dev;

	FUNC1(dev, "cable state change: %u\n", cstate);

	/*
	 * When the wand is unplugged we reset our state. The hardware will
	 * have done the same internally.
	 *
	 * Note we should never see a cable *plugged* event, as interrupts
	 * should only be enabled when transmitting, which requires the cable
	 * to be plugged. If we do see one it probably means the cable has been
	 * unplugged and re-plugged very rapidly. Possibly because it has a
	 * broken wire and is momentarily losing contact.
	 *
	 * TODO: At the moment if you plug in the cable then enable transmission
	 * the hardware will raise a couple of spurious interrupts, so
	 * just ignore them for now.
	 *
	 * Once the hardware is fixed we should complain and treat it as an
	 * unplug. Or at least track how frequently it is happening and do
	 * so if too many come in.
	 */
	if (cstate) {
		FUNC2(dev, "ignoring unexpected plug event\n");
		return;
	}
	FUNC3(fgdev);

	/*
	 * Record cable state change timestamp & wake anyone waiting
	 * on a cable state change. Be paranoid about ensuring events
	 * are not missed if we somehow get two interrupts in a jiffy.
	 */
	FUNC4(&fgdev->cstate_lock);
	when = jiffies_64;
	if (when <= fgdev->cstate_tstamp)
		when = fgdev->cstate_tstamp + 1;
	fgdev->cstate_tstamp = when;
	FUNC6(&fgdev->buffer_waitqueue);
	FUNC5(&fgdev->cstate_lock);
}