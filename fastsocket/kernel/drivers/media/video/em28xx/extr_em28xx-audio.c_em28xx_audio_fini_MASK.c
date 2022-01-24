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
struct TYPE_2__ {int /*<<< orphan*/ * sndcard; } ;
struct em28xx {int has_alsa_audio; TYPE_1__ adev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct em28xx *dev)
{
	if (dev == NULL)
		return 0;

	if (dev->has_alsa_audio != 1) {
		/* This device does not support the extension (in this case
		   the device is expecting the snd-usb-audio module or
		   doesn't have analog audio support at all) */
		return 0;
	}

	if (dev->adev.sndcard) {
		FUNC0(dev->adev.sndcard);
		dev->adev.sndcard = NULL;
	}

	return 0;
}