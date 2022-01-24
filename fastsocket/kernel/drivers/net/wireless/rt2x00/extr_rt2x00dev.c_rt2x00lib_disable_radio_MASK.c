#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rt2x00_dev {TYPE_1__* ops; int /*<<< orphan*/  cap_flags; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* set_device_state ) (struct rt2x00_dev*,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {TYPE_2__* lib; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAPABILITY_VCO_RECALIBRATION ; 
 int /*<<< orphan*/  DEVICE_STATE_ENABLED_RADIO ; 
 int /*<<< orphan*/  STATE_RADIO_IRQ_OFF ; 
 int /*<<< orphan*/  STATE_RADIO_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC12(struct rt2x00_dev *rt2x00dev)
{
	if (!FUNC10(DEVICE_STATE_ENABLED_RADIO, &rt2x00dev->flags))
		return;

	/*
	 * Stop watchdog monitoring.
	 */
	FUNC5(rt2x00dev);

	/*
	 * Stop all queues
	 */
	FUNC2(rt2x00dev);
	if (FUNC11(CAPABILITY_VCO_RECALIBRATION, &rt2x00dev->cap_flags))
		FUNC4(rt2x00dev);
	FUNC3(rt2x00dev);
	FUNC7(rt2x00dev);
	FUNC6(rt2x00dev, true);

	/*
	 * Disable radio.
	 */
	rt2x00dev->ops->lib->set_device_state(rt2x00dev, STATE_RADIO_OFF);
	rt2x00dev->ops->lib->set_device_state(rt2x00dev, STATE_RADIO_IRQ_OFF);
	FUNC0(rt2x00dev, false);
	FUNC1(rt2x00dev, false);
}