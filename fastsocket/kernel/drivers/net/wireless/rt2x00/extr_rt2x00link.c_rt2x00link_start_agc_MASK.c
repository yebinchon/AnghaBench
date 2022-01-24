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
struct link {int /*<<< orphan*/  agc_work; } ;
struct rt2x00_dev {int /*<<< orphan*/  hw; TYPE_2__* ops; int /*<<< orphan*/  flags; struct link link; } ;
struct TYPE_4__ {TYPE_1__* lib; } ;
struct TYPE_3__ {scalar_t__ gain_calibration; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGC_INTERVAL ; 
 int /*<<< orphan*/  DEVICE_STATE_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct rt2x00_dev *rt2x00dev)
{
	struct link *link = &rt2x00dev->link;

	if (FUNC1(DEVICE_STATE_PRESENT, &rt2x00dev->flags) &&
	    rt2x00dev->ops->lib->gain_calibration)
		FUNC0(rt2x00dev->hw,
					     &link->agc_work,
					     AGC_INTERVAL);
}