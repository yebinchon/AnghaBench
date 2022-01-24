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
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct serio {char* phys; TYPE_2__ dev; scalar_t__ parent; TYPE_1__ id; } ;
struct psmouse {int /*<<< orphan*/  (* disconnect ) (struct psmouse*) ;struct input_dev* dev; int /*<<< orphan*/  (* pt_deactivate ) (struct psmouse*) ;int /*<<< orphan*/  (* pt_activate ) (struct psmouse*) ;int /*<<< orphan*/  smartscroll; int /*<<< orphan*/  resync_time; int /*<<< orphan*/  resetafter; int /*<<< orphan*/  resolution; int /*<<< orphan*/  rate; int /*<<< orphan*/  phys; int /*<<< orphan*/  resync_work; int /*<<< orphan*/  ps2dev; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PSMOUSE_CMD_MODE ; 
 int /*<<< orphan*/  PSMOUSE_IGNORE ; 
 int /*<<< orphan*/  PSMOUSE_INITIALIZING ; 
 scalar_t__ SERIO_PS_PSTHRU ; 
 struct input_dev* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct psmouse*) ; 
 struct psmouse* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct serio*) ; 
 int /*<<< orphan*/  FUNC10 (struct psmouse*) ; 
 int /*<<< orphan*/  psmouse_attribute_group ; 
 int /*<<< orphan*/  FUNC11 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC12 (struct psmouse*) ; 
 int /*<<< orphan*/  psmouse_mutex ; 
 scalar_t__ FUNC13 (struct psmouse*) ; 
 int /*<<< orphan*/  psmouse_rate ; 
 int /*<<< orphan*/  psmouse_resetafter ; 
 int /*<<< orphan*/  psmouse_resolution ; 
 int /*<<< orphan*/  psmouse_resync ; 
 int /*<<< orphan*/  psmouse_resync_time ; 
 int /*<<< orphan*/  FUNC14 (struct psmouse*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  psmouse_smartscroll ; 
 int /*<<< orphan*/  FUNC15 (struct psmouse*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct serio*) ; 
 struct psmouse* FUNC17 (scalar_t__) ; 
 int FUNC18 (struct serio*,struct serio_driver*) ; 
 int /*<<< orphan*/  FUNC19 (struct serio*,struct psmouse*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC22 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC23 (struct psmouse*) ; 
 int FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC25(struct serio *serio, struct serio_driver *drv)
{
	struct psmouse *psmouse, *parent = NULL;
	struct input_dev *input_dev;
	int retval = 0, error = -ENOMEM;

	FUNC7(&psmouse_mutex);

	/*
	 * If this is a pass-through port deactivate parent so the device
	 * connected to this port can be successfully identified
	 */
	if (serio->parent && serio->id.type == SERIO_PS_PSTHRU) {
		parent = FUNC17(serio->parent);
		FUNC11(parent);
	}

	psmouse = FUNC6(sizeof(struct psmouse), GFP_KERNEL);
	input_dev = FUNC1();
	if (!psmouse || !input_dev)
		goto err_free;

	FUNC9(&psmouse->ps2dev, serio);
	FUNC0(&psmouse->resync_work, psmouse_resync);
	psmouse->dev = input_dev;
	FUNC20(psmouse->phys, sizeof(psmouse->phys), "%s/input0", serio->phys);

	FUNC14(psmouse, PSMOUSE_INITIALIZING);

	FUNC19(serio, psmouse);

	error = FUNC18(serio, drv);
	if (error)
		goto err_clear_drvdata;

	if (FUNC13(psmouse) < 0) {
		error = -ENODEV;
		goto err_close_serio;
	}

	psmouse->rate = psmouse_rate;
	psmouse->resolution = psmouse_resolution;
	psmouse->resetafter = psmouse_resetafter;
	psmouse->resync_time = parent ? 0 : psmouse_resync_time;
	psmouse->smartscroll = psmouse_smartscroll;

	FUNC15(psmouse, NULL);

	FUNC14(psmouse, PSMOUSE_CMD_MODE);
	FUNC12(psmouse);

	error = FUNC3(psmouse->dev);
	if (error)
		goto err_protocol_disconnect;

	if (parent && parent->pt_activate)
		parent->pt_activate(parent);

	error = FUNC24(&serio->dev.kobj, &psmouse_attribute_group);
	if (error)
		goto err_pt_deactivate;

	FUNC10(psmouse);

 out:
	/* If this is a pass-through port the parent needs to be re-activated */
	if (parent)
		FUNC10(parent);

	FUNC8(&psmouse_mutex);
	return retval;

 err_pt_deactivate:
	if (parent && parent->pt_deactivate)
		parent->pt_deactivate(parent);
	FUNC4(psmouse->dev);
	input_dev = NULL; /* so we don't try to free it below */
 err_protocol_disconnect:
	if (psmouse->disconnect)
		psmouse->disconnect(psmouse);
	FUNC14(psmouse, PSMOUSE_IGNORE);
 err_close_serio:
	FUNC16(serio);
 err_clear_drvdata:
	FUNC19(serio, NULL);
 err_free:
	FUNC2(input_dev);
	FUNC5(psmouse);

	retval = error;
	goto out;
}