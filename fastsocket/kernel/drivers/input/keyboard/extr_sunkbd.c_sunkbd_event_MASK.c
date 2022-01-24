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
struct sunkbd {int /*<<< orphan*/  serio; } ;
struct input_dev {int /*<<< orphan*/  led; } ;

/* Variables and functions */
#define  EV_LED 131 
#define  EV_SND 130 
 int /*<<< orphan*/  LED_CAPSL ; 
 int /*<<< orphan*/  LED_COMPOSE ; 
 int /*<<< orphan*/  LED_NUML ; 
 int /*<<< orphan*/  LED_SCROLLL ; 
#define  SND_BELL 129 
#define  SND_CLICK 128 
 int /*<<< orphan*/  SUNKBD_CMD_BELLOFF ; 
 int /*<<< orphan*/  SUNKBD_CMD_NOCLICK ; 
 int SUNKBD_CMD_SETLED ; 
 struct sunkbd* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct input_dev *dev,
			unsigned int type, unsigned int code, int value)
{
	struct sunkbd *sunkbd = FUNC0(dev);

	switch (type) {

	case EV_LED:

		FUNC1(sunkbd->serio, SUNKBD_CMD_SETLED);
		FUNC1(sunkbd->serio,
			(!!FUNC2(LED_CAPSL,   dev->led) << 3) |
			(!!FUNC2(LED_SCROLLL, dev->led) << 2) |
			(!!FUNC2(LED_COMPOSE, dev->led) << 1) |
			 !!FUNC2(LED_NUML,    dev->led));
		return 0;

	case EV_SND:

		switch (code) {

		case SND_CLICK:
			FUNC1(sunkbd->serio, SUNKBD_CMD_NOCLICK - value);
			return 0;

		case SND_BELL:
			FUNC1(sunkbd->serio, SUNKBD_CMD_BELLOFF - value);
			return 0;
		}

		break;
	}

	return -1;
}