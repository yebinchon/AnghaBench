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
typedef  int /*<<< orphan*/  u16 ;
struct si4713_device {int /*<<< orphan*/  mutex; int /*<<< orphan*/  mute; scalar_t__ power_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  SI4713_TX_LINE_INPUT_MUTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct si4713_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct si4713_device *sdev, u16 mute)
{
	int rval = 0;

	mute = FUNC3(mute);

	FUNC1(&sdev->mutex);

	if (sdev->power_state)
		rval = FUNC4(sdev,
				SI4713_TX_LINE_INPUT_MUTE, mute);

	if (rval >= 0)
		sdev->mute = FUNC0(mute);

	FUNC2(&sdev->mutex);

	return rval;
}