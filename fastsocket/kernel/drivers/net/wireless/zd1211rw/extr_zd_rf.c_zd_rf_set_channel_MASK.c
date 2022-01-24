#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct zd_rf {int (* set_channel ) (struct zd_rf*,scalar_t__) ;scalar_t__ channel; } ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ MAX_CHANNEL24 ; 
 scalar_t__ MIN_CHANNEL24 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct zd_rf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (struct zd_rf*) ; 

int FUNC6(struct zd_rf *rf, u8 channel)
{
	int r;

	FUNC0(FUNC2(&FUNC5(rf)->mutex));
	if (channel < MIN_CHANNEL24)
		return -EINVAL;
	if (channel > MAX_CHANNEL24)
		return -EINVAL;
	FUNC1(FUNC4(FUNC5(rf)), "channel: %d\n", channel);

	r = rf->set_channel(rf, channel);
	if (r >= 0)
		rf->channel = channel;
	return r;
}