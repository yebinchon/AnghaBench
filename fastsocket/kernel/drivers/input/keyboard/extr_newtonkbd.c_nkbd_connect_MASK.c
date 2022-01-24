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
struct nkbd {struct input_dev* dev; int /*<<< orphan*/ * keycode; int /*<<< orphan*/  phys; struct serio* serio; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_3__ {int product; int version; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; int* evbit; int keycodesize; int /*<<< orphan*/  keybit; int /*<<< orphan*/  keycodemax; int /*<<< orphan*/ * keycode; TYPE_2__ dev; TYPE_1__ id; int /*<<< orphan*/  phys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUS_RS232 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SERIO_NEWTON ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int FUNC5 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct nkbd*) ; 
 struct nkbd* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nkbd_keycode ; 
 int /*<<< orphan*/  FUNC9 (struct serio*) ; 
 int FUNC10 (struct serio*,struct serio_driver*) ; 
 int /*<<< orphan*/  FUNC11 (struct serio*,struct nkbd*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,char*,char*) ; 

__attribute__((used)) static int FUNC14(struct serio *serio, struct serio_driver *drv)
{
	struct nkbd *nkbd;
	struct input_dev *input_dev;
	int err = -ENOMEM;
	int i;

	nkbd = FUNC7(sizeof(struct nkbd), GFP_KERNEL);
	input_dev = FUNC3();
	if (!nkbd || !input_dev)
		goto fail1;

	nkbd->serio = serio;
	nkbd->dev = input_dev;
	FUNC13(nkbd->phys, sizeof(nkbd->phys), "%s/input0", serio->phys);
	FUNC8(nkbd->keycode, nkbd_keycode, sizeof(nkbd->keycode));

	input_dev->name = "Newton Keyboard";
	input_dev->phys = nkbd->phys;
	input_dev->id.bustype = BUS_RS232;
	input_dev->id.vendor = SERIO_NEWTON;
	input_dev->id.product = 0x0001;
	input_dev->id.version = 0x0100;
	input_dev->dev.parent = &serio->dev;

	input_dev->evbit[0] = FUNC1(EV_KEY) | FUNC1(EV_REP);
	input_dev->keycode = nkbd->keycode;
	input_dev->keycodesize = sizeof(unsigned char);
	input_dev->keycodemax = FUNC0(nkbd_keycode);
	for (i = 0; i < 128; i++)
		FUNC12(nkbd->keycode[i], input_dev->keybit);
	FUNC2(0, input_dev->keybit);

	FUNC11(serio, nkbd);

	err = FUNC10(serio, drv);
	if (err)
		goto fail2;

	err = FUNC5(nkbd->dev);
	if (err)
		goto fail3;

	return 0;

 fail3:	FUNC9(serio);
 fail2:	FUNC11(serio, NULL);
 fail1:	FUNC4(input_dev);
	FUNC6(nkbd);
	return err;
}