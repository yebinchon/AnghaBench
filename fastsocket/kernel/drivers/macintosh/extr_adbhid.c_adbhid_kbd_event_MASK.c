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
struct input_dev {int /*<<< orphan*/  led; } ;
struct adbhid {int /*<<< orphan*/  id; } ;

/* Variables and functions */
#define  EV_LED 128 
 int /*<<< orphan*/  LED_CAPSL ; 
 int /*<<< orphan*/  LED_NUML ; 
 int /*<<< orphan*/  LED_SCROLLL ; 
 struct adbhid* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct input_dev *dev, unsigned int type, unsigned int code, int value)
{
	struct adbhid *adbhid = FUNC0(dev);
	unsigned char leds;

	switch (type) {
	case EV_LED:
		leds =  (FUNC2(LED_SCROLLL, dev->led) ? 4 : 0) |
			(FUNC2(LED_NUML,    dev->led) ? 1 : 0) |
			(FUNC2(LED_CAPSL,   dev->led) ? 2 : 0);
		FUNC1(leds, adbhid->id);
		return 0;
	}

	return -1;
}