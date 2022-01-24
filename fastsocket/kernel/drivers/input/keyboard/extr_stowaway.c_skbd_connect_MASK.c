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
struct skbd {struct input_dev* dev; int /*<<< orphan*/  keycode; int /*<<< orphan*/  phys; struct serio* serio; } ;
struct serio_driver {int dummy; } ;
struct serio {char* phys; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_3__ {int product; int version; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; int* evbit; int keycodesize; int keycodemax; int /*<<< orphan*/  keybit; int /*<<< orphan*/  keycode; TYPE_2__ dev; TYPE_1__ id; int /*<<< orphan*/  phys; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUS_RS232 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SERIO_STOWAWAY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int FUNC5 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct skbd*) ; 
 struct skbd* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct serio*) ; 
 int FUNC10 (struct serio*,struct serio_driver*) ; 
 int /*<<< orphan*/  FUNC11 (struct serio*,struct skbd*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * skbd_keycode ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,char*,char*) ; 

__attribute__((used)) static int FUNC14(struct serio *serio, struct serio_driver *drv)
{
	struct skbd *skbd;
	struct input_dev *input_dev;
	int err = -ENOMEM;
	int i;

	skbd = FUNC7(sizeof(struct skbd), GFP_KERNEL);
	input_dev = FUNC3();
	if (!skbd || !input_dev)
		goto fail1;

	skbd->serio = serio;
	skbd->dev = input_dev;
	FUNC13(skbd->phys, sizeof(skbd->phys), "%s/input0", serio->phys);
	FUNC8(skbd->keycode, skbd_keycode, sizeof(skbd->keycode));

	input_dev->name = "Stowaway Keyboard";
	input_dev->phys = skbd->phys;
	input_dev->id.bustype = BUS_RS232;
	input_dev->id.vendor = SERIO_STOWAWAY;
	input_dev->id.product = 0x0001;
	input_dev->id.version = 0x0100;
	input_dev->dev.parent = &serio->dev;

	input_dev->evbit[0] = FUNC1(EV_KEY) | FUNC1(EV_REP);
	input_dev->keycode = skbd->keycode;
	input_dev->keycodesize = sizeof(unsigned char);
	input_dev->keycodemax = FUNC0(skbd_keycode);
	for (i = 0; i < FUNC0(skbd_keycode); i++)
		FUNC12(skbd_keycode[i], input_dev->keybit);
	FUNC2(0, input_dev->keybit);

	FUNC11(serio, skbd);

	err = FUNC10(serio, drv);
	if (err)
		goto fail2;

	err = FUNC5(skbd->dev);
	if (err)
		goto fail3;

	return 0;

 fail3: FUNC9(serio);
 fail2:	FUNC11(serio, NULL);
 fail1:	FUNC4(input_dev);
	FUNC6(skbd);
	return err;
}