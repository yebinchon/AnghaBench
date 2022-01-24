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
struct serio_driver {int dummy; } ;
struct serio {char* phys; int /*<<< orphan*/  dev; } ;
struct lkkbd {struct serio* serio; struct input_dev* dev; int /*<<< orphan*/ * keycode; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; int /*<<< orphan*/  ctrlclick_volume; int /*<<< orphan*/  keyclick_volume; int /*<<< orphan*/  bell_volume; int /*<<< orphan*/  tq; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_3__ {int version; scalar_t__ product; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bustype; } ;
struct input_dev {int keycodesize; int keycodemax; int /*<<< orphan*/  keybit; int /*<<< orphan*/ * keycode; int /*<<< orphan*/  sndbit; int /*<<< orphan*/  ledbit; int /*<<< orphan*/  evbit; int /*<<< orphan*/  event; TYPE_2__ dev; TYPE_1__ id; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  lk_keycode_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_RS232 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_LED ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  EV_SND ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_RESERVED ; 
 int /*<<< orphan*/  LED_CAPSL ; 
 int /*<<< orphan*/  LED_COMPOSE ; 
 int /*<<< orphan*/  LED_SCROLLL ; 
 int /*<<< orphan*/  LED_SLEEP ; 
 int /*<<< orphan*/  LK_CMD_POWERCYCLE_RESET ; 
 int LK_NUM_KEYCODES ; 
 int /*<<< orphan*/  SERIO_LKKBD ; 
 int /*<<< orphan*/  SND_BELL ; 
 int /*<<< orphan*/  SND_CLICK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bell_volume ; 
 int /*<<< orphan*/  ctrlclick_volume ; 
 struct input_dev* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int FUNC5 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,struct lkkbd*) ; 
 int /*<<< orphan*/  keyclick_volume ; 
 int /*<<< orphan*/  FUNC7 (struct lkkbd*) ; 
 struct lkkbd* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lkkbd_event ; 
 int /*<<< orphan*/  lkkbd_keycode ; 
 int /*<<< orphan*/  lkkbd_reinit ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct serio*) ; 
 int FUNC11 (struct serio*,struct serio_driver*) ; 
 int /*<<< orphan*/  FUNC12 (struct serio*,struct lkkbd*) ; 
 int /*<<< orphan*/  FUNC13 (struct serio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC17 (struct serio *serio, struct serio_driver *drv)
{
	struct lkkbd *lk;
	struct input_dev *input_dev;
	int i;
	int err;

	lk = FUNC8 (sizeof (struct lkkbd), GFP_KERNEL);
	input_dev = FUNC3 ();
	if (!lk || !input_dev) {
		err = -ENOMEM;
		goto fail1;
	}

	lk->serio = serio;
	lk->dev = input_dev;
	FUNC0 (&lk->tq, lkkbd_reinit);
	lk->bell_volume = bell_volume;
	lk->keyclick_volume = keyclick_volume;
	lk->ctrlclick_volume = ctrlclick_volume;
	FUNC9 (lk->keycode, lkkbd_keycode, sizeof (lk_keycode_t) * LK_NUM_KEYCODES);

	FUNC16 (lk->name, "DEC LK keyboard", sizeof(lk->name));
	FUNC15 (lk->phys, sizeof(lk->phys), "%s/input0", serio->phys);

	input_dev->name = lk->name;
	input_dev->phys = lk->phys;
	input_dev->id.bustype = BUS_RS232;
	input_dev->id.vendor = SERIO_LKKBD;
	input_dev->id.product = 0;
	input_dev->id.version = 0x0100;
	input_dev->dev.parent = &serio->dev;
	input_dev->event = lkkbd_event;

	FUNC6 (input_dev, lk);

	FUNC14 (EV_KEY, input_dev->evbit);
	FUNC14 (EV_LED, input_dev->evbit);
	FUNC14 (EV_SND, input_dev->evbit);
	FUNC14 (EV_REP, input_dev->evbit);
	FUNC14 (LED_CAPSL, input_dev->ledbit);
	FUNC14 (LED_SLEEP, input_dev->ledbit);
	FUNC14 (LED_COMPOSE, input_dev->ledbit);
	FUNC14 (LED_SCROLLL, input_dev->ledbit);
	FUNC14 (SND_BELL, input_dev->sndbit);
	FUNC14 (SND_CLICK, input_dev->sndbit);

	input_dev->keycode = lk->keycode;
	input_dev->keycodesize = sizeof (lk_keycode_t);
	input_dev->keycodemax = LK_NUM_KEYCODES;

	for (i = 0; i < LK_NUM_KEYCODES; i++)
		FUNC2 (lk->keycode[i], input_dev->keybit);
	FUNC1(KEY_RESERVED, input_dev->keybit);

	FUNC12 (serio, lk);

	err = FUNC11 (serio, drv);
	if (err)
		goto fail2;

	err = FUNC5 (lk->dev);
	if (err)
		goto fail3;

	FUNC13 (lk->serio, LK_CMD_POWERCYCLE_RESET);

	return 0;

 fail3:	FUNC10 (serio);
 fail2:	FUNC12 (serio, NULL);
 fail1:	FUNC4 (input_dev);
	FUNC7 (lk);
	return err;
}