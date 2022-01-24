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
struct input_device_id {int flags; scalar_t__ bustype; scalar_t__ vendor; scalar_t__ product; scalar_t__ version; scalar_t__ driver_info; } ;
struct TYPE_2__ {scalar_t__ bustype; scalar_t__ vendor; scalar_t__ product; scalar_t__ version; } ;
struct input_dev {TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MAX ; 
 int /*<<< orphan*/  EV_MAX ; 
 int /*<<< orphan*/  FF_MAX ; 
 int INPUT_DEVICE_ID_MATCH_BUS ; 
 int INPUT_DEVICE_ID_MATCH_PRODUCT ; 
 int INPUT_DEVICE_ID_MATCH_VENDOR ; 
 int INPUT_DEVICE_ID_MATCH_VERSION ; 
 int /*<<< orphan*/  KEY_MAX ; 
 int /*<<< orphan*/  LED_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSC_MAX ; 
 int /*<<< orphan*/  REL_MAX ; 
 int /*<<< orphan*/  SND_MAX ; 
 int /*<<< orphan*/  SW_MAX ; 
 int /*<<< orphan*/  absbit ; 
 int /*<<< orphan*/  evbit ; 
 int /*<<< orphan*/  ffbit ; 
 int /*<<< orphan*/  keybit ; 
 int /*<<< orphan*/  ledbit ; 
 int /*<<< orphan*/  mscbit ; 
 int /*<<< orphan*/  relbit ; 
 int /*<<< orphan*/  sndbit ; 
 int /*<<< orphan*/  swbit ; 

__attribute__((used)) static const struct input_device_id *FUNC1(const struct input_device_id *id,
							struct input_dev *dev)
{
	int i;

	for (; id->flags || id->driver_info; id++) {

		if (id->flags & INPUT_DEVICE_ID_MATCH_BUS)
			if (id->bustype != dev->id.bustype)
				continue;

		if (id->flags & INPUT_DEVICE_ID_MATCH_VENDOR)
			if (id->vendor != dev->id.vendor)
				continue;

		if (id->flags & INPUT_DEVICE_ID_MATCH_PRODUCT)
			if (id->product != dev->id.product)
				continue;

		if (id->flags & INPUT_DEVICE_ID_MATCH_VERSION)
			if (id->version != dev->id.version)
				continue;

		FUNC0(evbit,  EV_MAX);
		FUNC0(keybit, KEY_MAX);
		FUNC0(relbit, REL_MAX);
		FUNC0(absbit, ABS_MAX);
		FUNC0(mscbit, MSC_MAX);
		FUNC0(ledbit, LED_MAX);
		FUNC0(sndbit, SND_MAX);
		FUNC0(ffbit,  FF_MAX);
		FUNC0(swbit,  SW_MAX);

		return id;
	}

	return NULL;
}